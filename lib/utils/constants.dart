import 'package:censio/screens/account_screen.dart';
import 'package:censio/screens/cart_screen.dart';
import 'package:censio/screens/home_screen.dart';
import 'package:censio/screens/more_screen.dart';
import 'package:flutter/material.dart';

const double kAppBarHeight = 80;

const String amazonLogoUrl = "image/main1-removebg-preview.png";

const List<String> categoriesList = [
  "Grocery",
  "Mobiles",
  "Home",
  "Electronics",
  "Fashions",
  "Appliances",
  "Beauty, Toys"
];

const List<Widget> screens = [
  HomeScreen(),
  AccountScreen(),
  CartScreen(),
  MoreScreen(),
];

const List<String> categoryLogos = [
  "https://rukminim1.flixcart.com/flap/128/128/image/29327f40e9c4d26b.png?q=100",
  "https://images-eu.ssl-images-amazon.com/images/G/31/img19/2020/PC/Mobile._SY116_CB431401553_.jpg",
  "https://rukminim1.flixcart.com/flap/128/128/image/ab7e2b022a4587dd.jpg?q=100",
  "https://rukminim1.flixcart.com/flap/128/128/image/69c6589653afdb9a.png?q=100",
  "https://rukminim1.flixcart.com/flap/128/128/image/c12afc017e6f24cb.png?q=100",
  "https://rukminim1.flixcart.com/flap/128/128/image/0ff199d1bd27eb98.png?q=100",
  "https://rukminim1.flixcart.com/flap/128/128/image/dff3f7adcf3a90c6.png?q=100"
];

const List<String> largeAds = [
  "image/image1.jpg",
  "image/image3.png",
  "image/image4.jpg",
  "image/image5.jpg",
  "image/image2.jpg",
];

const List<String> smallAds = [
  "image/image6.png",
  "image/image7.png",
  "image/image8.png",
  "https://images-eu.ssl-images-amazon.com/images/G/31/img19/2020/PC/Mobile._SY116_CB431401553_.jpg",
];

const List<String> adItemNames = ["Grocery", "Electronics", "Cart", "Mobiles"];

//Dont even attemp to scroll to the end of this manually lmao
const String amazonLogo = "image/main.png";

/*List<Widget> testelec = [
  SimpleProductWidget(
    productModel: ProductModel(
        url:
            "https://m.media-amazon.com/images/I/81o-H5PLmeL._AC_UY327_FMwebp_QL65_.jpg",
        productName: "Samsung Galaxy S21 FE 5G",
        cost: 54999.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Censio",
        sellerUid: "983498ihjb",
        rating: 4,
        noOfRating: 4),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/61EXU8BuGZL._SX679_.jpg",
        productName: "New and improved smart speaker with Alexa",
        cost: 2399,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "alexa",
        sellerUid: "983498ihjb",
        rating: 4,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url:
            "https://rukminim1.flixcart.com/image/416/416/kk1h5e80/headphone/k/o/8/rma2003-realme-original-imafzh4g9cmfefgm.jpeg?q=70",
        productName: "realme Buds Air 2",
        cost: 2999,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "realme",
        sellerUid: "983498ihjb",
        rating: 5,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/71gD8WdSlaL._SX679_.jpg",
        productName: "Apple MacBook Pro",
        cost: 127990.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Apple M1",
        sellerUid: "983498ihjb",
        rating: 5,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/61IMRs+o0iL._SX522_.jpg",
        productName: "boAt Xtend Smartwatch",
        cost: 3499.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "boAt",
        sellerUid: "983498ihjb",
        rating: 3,
        noOfRating: 1),
  )
];*/

/*List<Widget> testdress = [
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/61nBq7O6zAL._UX569_.jpg",
        productName: "Raymond Men's Notch Lapel Regular Fit Blazer",
        cost: 7159.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Raymond",
        sellerUid: "983498ihjb",
        rating: 4,
        noOfRating: 4),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/61akA1Lfz5L._UY741_.jpg",
        productName: "PURVAJA Women’s Empire Maxi Dress",
        cost: 599.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Visit the PURVAJA Store",
        sellerUid: "983498ihjb",
        rating: 3,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/615qWlfD+6L._UY741_.jpg",
        productName: "FRANKO ROGER Men's Formal Trouser",
        cost: 499,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "FRANKO ROGER",
        sellerUid: "983498ihjb",
        rating: 3,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/81Sh1aip6rL._UY741_.jpg",
        productName: "Women's Solid Cotton Silk Saree",
        cost: 1255.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Visit the VJ Fashion Store",
        sellerUid: "983498ihjb",
        rating: 4,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/714QwfIyriL._UY741_.jpg",
        productName: "Lymio Women Mock Neck Ruffle Cuff Floral Top",
        cost: 399.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Visit the Lymio Store",
        sellerUid: "983498ihjb",
        rating: 4,
        noOfRating: 1),
  )
];*/

/*List<Widget> testgrocery = [
  SimpleProductWidget(
    productModel: ProductModel(
        url:
            "https://m.media-amazon.com/images/I/71vtuqR6LIL._SX679_PIbundle-5,TopRight,0,0_AA679SH20_.jpg",
        productName: "Cadbury Bournville Rich Cocoa Dark Chocolate",
        cost: 425.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Visit the Cadbury Store",
        sellerUid: "983498ihjb",
        rating: 4,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/612Cs7-cFTL._SX679_.jpg",
        productName: "MuscleBlaze 100% Whey Protein",
        cost: 2499.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Brand: MuscleBlaze",
        sellerUid: "983498ihjb",
        rating: 5,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/41YDq-tchUL.jpg",
        productName: "Fortune Premium Kachi Ghani Pure Mustard Oil, 1tr",
        cost: 212.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "FORTUNE",
        sellerUid: "983498ihjb",
        rating: 4,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/81cpIhgH4uL._SX679_.jpg",
        productName: "Aashirvaad Shudh Chakki Atta, 10kg",
        cost: 376.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Aashirvaad",
        sellerUid: "983498ihjb",
        rating: 3,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url: "https://m.media-amazon.com/images/I/51QF8woKr5S._SX679_.jpg",
        productName: "Tata Tea Premium",
        cost: 499,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Brand: Tata Tea Premium",
        sellerUid: "983498ihjb",
        rating: 5,
        noOfRating: 1),
  )
];*/

/*List<Widget> testexplore = [
  SimpleProductWidget(
    productModel: ProductModel(
        url:
            "https://rukminim1.flixcart.com/image/416/416/kt39jm80/smartwatch/l/c/c/android-ios-watch-2-pro-realme-no-original-imag6gfpmstpzg8h.jpeg?q=70",
        productName: "realme Smart Watch 2 Pro",
        cost: 4499.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "realme",
        sellerUid: "983498ihjb",
        rating: 4,
        noOfRating: 4),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url:
            "https://rukminim1.flixcart.com/image/416/416/kr3tj0w0/exercise-bike/e/7/y/csb730-smart-series-magnetic-resistance-cockatoo-original-imag4yvzmzkf8gft.jpeg?q=70",
        productName: "COCKATOO CSB730",
        cost: 19679,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "COCKATOO",
        sellerUid: "983498ihjb",
        rating: 3,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url:
            "https://rukminim1.flixcart.com/image/832/832/kqv8vww0/kids-t-shirt/c/v/e/10-11-years-kbcc-singham-original-imag4scsrvra5zrw.jpeg?q=70",
        productName: "Boys Colorblock Cotton Blend T Shirt",
        cost: 297.50,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Singham",
        sellerUid: "983498ihjb",
        rating: 3,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url:
            "https://rukminim1.flixcart.com/image/832/832/krjjde80/watch/c/o/e/7088-silver-hmtr-original-imag5b9qe7xhc4jz.jpeg?q=70",
        productName: "7088-SILVER Analog Watch - For Men",
        cost: 4500.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Titan",
        sellerUid: "983498ihjb",
        rating: 4,
        noOfRating: 1),
  ),
  SimpleProductWidget(
    productModel: ProductModel(
        url:
            "https://rukminim1.flixcart.com/image/832/832/ktuewsw0/sunglass/f/q/n/daimond-cut-medium-singco-india-original-imag73fzzknhtnkq.jpeg?q=70",
        productName: "Gradient, Toughened Glass Lens",
        cost: 730.00,
        discount: 0,
        uid: "eioejfbkn",
        sellerName: "Singco India",
        sellerUid: "983498ihjb",
        rating: 5,
        noOfRating: 1),
  )
];*/

List<String> keysOfRating = [
  "Very bad",
  "Poor",
  "Average",
  "Good",
  "Excellent"
];
