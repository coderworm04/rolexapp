// // ProductDetailsPage.dart

// import 'package:flutter/material.dart';
// import 'package:rolex/consts/colors-consts.dart';
// import 'package:rolex/widgets/ProductImageSlider.dart';

// class ProductDetailsPage extends StatefulWidget {
//   final String productName;
//   final String productImage;
//   final double productPrice;
//   final double productRating;

//   const ProductDetailsPage({
//     Key? key,
//     required this.productName,
//     required this.productImage,
//     required this.productPrice,
//     required this.productRating,
//   }) : super(key: key);

//   @override
//   State<ProductDetailsPage> createState() => _ProductDetailsPageState();
// }

// class _ProductDetailsPageState extends State<ProductDetailsPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: 
//       AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () => Navigator.pop(context),
//         ),
//         shadowColor: Colors.transparent,
//         backgroundColor: GreenColor,
//       title: Text("Analog Watchs"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Product image slider
//             ProductImageSlider(productImage: widget.productImage),

//             // Product details
//             Container(
//               padding: EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Product name
//                   Text(
//                     widget.productName,
//                     style: Theme.of(context).textTheme.headline6,
//                   ),

//                   // Product price
//                   Text(
//                     "\$${widget.productPrice}",
//                     style: Theme.of(context).textTheme.bodyText1,
//                   ),

//                   // Product rating
//                   Row(
//                     children: [
//                       for (int i = 0; i < widget.productRating; i++)
//                         Icon(Icons.star, color: Colors.yellow),
//                     ],
//                   ),

//                   // Product description
//                   Text(
//                     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget risus condimentum, ac semper risus viverra. Pellentesque eget augue non felis elementum tincidunt.",
//                     style: Theme.of(context).textTheme.bodyText2,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ProductImageSlider.dart

