import 'package:censio/resources/cloudfirestore_methods.dart';
import 'package:censio/utils/constants.dart';
import 'package:censio/widget/ad_banner_widget.dart';
import 'package:censio/widget/categories_horizontal_list_view_bar.dart';
import 'package:censio/widget/loading_widget.dart';
import 'package:censio/widget/products_showcase_list_view.dart';
import 'package:censio/widget/search_bar_widget.dart';
import 'package:censio/widget/user_details_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();
  double offset = 0;
  List<Widget>? discount30;
  List<Widget>? discount20;
  List<Widget>? discount10;
  List<Widget>? discount0;

  @override
  void initState() {
    super.initState();
    getData();
    controller.addListener(() {
      setState(() {
        offset = controller.position.pixels;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void getData() async {
    List<Widget> temp30 =
        await CloudFirestoreClass().getProductsFromDiscount(30);
    List<Widget> temp20 =
        await CloudFirestoreClass().getProductsFromDiscount(20);
    List<Widget> temp10 =
        await CloudFirestoreClass().getProductsFromDiscount(10);
    List<Widget> temp0 = await CloudFirestoreClass().getProductsFromDiscount(0);
    // ignore: avoid_print
    print("everything is done");
    setState(() {
      discount30 = temp30;
      discount20 = temp20;
      discount10 = temp10;
      discount0 = temp0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarWidget(
        isReadOnly: true,
        hasBackButton: false,
      ),
      body: discount30 != null &&
              discount20 != null &&
              discount10 != null &&
              discount0 != null
          ? Stack(
              children: [
                SingleChildScrollView(
                  controller: controller,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: kAppBarHeight / 2,
                      ),
                      const CategoriesHorizontalListViewBar(),
                      const AdBannerWidget(),
                      ProductsShowcaseListView(
                          title: "Upto 30% Off", children: discount30!),
                      ProductsShowcaseListView(
                          title: "Upto 20% Off", children: discount20!),
                      ProductsShowcaseListView(
                          title: "Upto 10% Off", children: discount10!),
                      ProductsShowcaseListView(
                          title: "Explore", children: discount0!),
                    ],
                  ),
                ),
                UserDetailsBar(
                  offset: offset,
                ),
              ],
            )
          : const LoadingWidget(),
    );
  }
}
