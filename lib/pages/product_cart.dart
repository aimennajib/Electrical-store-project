import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:project/product_list/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.itemIndex,
    this.product,
    required this.press,
  });

  final int itemIndex;
  final Product? product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      height: 190.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => press(),
            child: Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, right: 5, left: 5),
                    child: Column(
                      children: [
                        Text(
                          product!.title,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          product!.subTitle,
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),

                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.0,
                              // vertical: 10.0,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFfcca46),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Text('السعر: \$${product!.price}'),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Image.asset(
                    product!.image,
                    height: 110,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
