import 'package:censio/model/product_model.dart';
import 'package:censio/widget/loading_widget.dart';
import 'package:censio/widget/results_widget.dart';
import 'package:censio/widget/search_bar_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final String query;
  const ResultsScreen({
    Key? key,
    required this.query,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SearchBarWidget(isReadOnly: false, hasBackButton: true),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Showing results for ",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    TextSpan(
                      text: query,
                      style: const TextStyle(fontSize: 17, color: Colors.green),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: FutureBuilder(
                  future: FirebaseFirestore.instance
                      .collection("products")
                      .where("key", isEqualTo: query)
                      .get(),
                  builder: (context,
                      AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                          snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const LoadingWidget();
                    } else {
                      return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, childAspectRatio: 2 / 3.5),
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            ProductModel product =
                                ProductModel.getModelFromJson(
                                    json: snapshot.data!.docs[index].data());
                            return ResultsWidget(product: product);
                          });
                    }
                  }))
        ],
      ),
    );
  }
}
