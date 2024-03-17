import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rolex/consts/export-consts.dart';
// ignore: unused_import
import 'package:rolex/consts/images-consts.dart';

// ignore: must_be_immutable
class ItemsWidgets extends StatefulWidget {
  String category;
  ItemsWidgets(this.category);

  @override
  State<ItemsWidgets> createState() => _ItemsWidgetsState();
}

class _ItemsWidgetsState extends State<ItemsWidgets> {
  List<Map<String, dynamic>> productData = [];

  @override
  void initState() {
    super.initState();
    fetchProduct();
  }

  Future<void> fetchProduct() async {
    String url = "http://localhost/rolex/ProductDataFatch.php";
    var response = await http.post(Uri.parse(url),body: 
    {
      "category":widget.category
    });
    setState(() {
      productData = List<Map<String, dynamic>>.from(jsonDecode(response.body));
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.05,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(0, 4), // Adjust the offset to control the "drop" effect
                blurRadius: 8, // Adjust the blur radius for a softer or stronger shadow
              ),
            ],
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsPage(
                        productName: productData[index]['name'],
                        productDescription: productData[index]['description'],
                        productImage: productData[index]['poster_image'],
                        productPrice: productData[index]['price'],
                        productRating: productData[index]['rating'],

                        // Add other product details as needed
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Image.asset(
                  productData[index]['poster_image'],
                  // product, // Replace 'your_static_image.png' with the actual path to your static image asset
                  height: 120,
                  width: 120,
                ),

                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.center,
                child: Text(
                  productData[index]['name'],
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: bold, // Make sure 'bold' is defined
                    color: GreenColor,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ProductDetailsPage extends StatefulWidget {
  final String productName;
  final String productDescription;
  final String productImage;
  final String productPrice;
  final String productRating;

  const ProductDetailsPage({
    Key? key,
    required this.productName,
    required this.productDescription,
    required this.productImage,
    required this.productPrice,
    required this.productRating,
  }) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SingleChildScrollView(
  child: Column(
    children: [
Container(
  color: GreenColor,
  padding: EdgeInsets.all(10),
  child: Row(
    children: [
      // Add back arrow icon with onPressed callback
      InkWell(
        child: Icon(Icons.arrow_back, size: 30, color: Colors.white),
        onTap: () => Navigator.pop(context),
      ),

      // Add logo image with padding
      Padding(
        padding: const EdgeInsets.only(left: 145),
        child: Image.asset("assets/icons/logo-y.png", height: 50),
      ),
    ],
  ),
),


      Container(
        height: 800,
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: lightGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product image slider
              ProductImageSlider(
                productImage: widget.productImage,
                controller: _pageController,
              ),

              // Product details
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product name
                    Text(
                      widget.productName,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    // Product price
                    Text(
                      "\$${widget.productPrice}",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),

                    // Product rating
                    Row(
                      children: [
                        for (int i = 0; i < (int.tryParse(widget.productRating) ?? 0); i++)
                          Icon(Icons.star, color: Colors.yellow),
                      ],
                    ),
                    Text(
                      widget.productDescription,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),

                    // Product description
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),

          );

  }
}

class ProductImageSlider extends StatelessWidget {
  final String productImage;
  final PageController controller;

  const ProductImageSlider({
    Key? key,
    required this.productImage,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: PageView(
        controller: controller,
        children: [
          Image.asset(
            productImage,
            height: 200,
            width: 200,
          ),
          // Add more images as needed
        ],
      ),
    );
  }
}
