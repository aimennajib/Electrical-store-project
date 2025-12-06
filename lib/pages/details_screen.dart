import 'package:flutter/material.dart';
import 'package:project/product_list/product.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF219ebc),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1EFF1),
        title: Text(product.title),
      ),
      body: Column(
        children: [
          Container(
            height: size.height * 0.5,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF1EFF1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                // SizedBox(height: 20),
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: ClipOval(
                      child: Image.asset(product.image, fit: BoxFit.contain),
                    ),
                  ),
                ),

                // SizedBox(height: 20),
                Text(
                  product.title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                Text(
                  product.subTitle,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                // SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      // vertical: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFfcca46),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Text('السعر: \$${product.price}'),
                  ),
                ),
              ],
            ),
          ),

          // SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(product.description),
          ),
        ],
      ),
    );
  }
}
