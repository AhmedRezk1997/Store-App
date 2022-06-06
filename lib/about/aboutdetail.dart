import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:store_app/constant/colors.dart';
import 'package:store_app/materials/mcolor.dart';
import 'package:store_app/constant/products.dart';

import '../materials/matrial_image.dart';

class Aboutdetail extends StatelessWidget {
  final Products product;
  const Aboutdetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            //  height: size.width,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Backgroundcolor,
              borderRadius: BorderRadius.circular(80),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  height: 250,
                  child: Center(
                    child: Productimage(
                      size: size,
                      image: product.image,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Matrialcolor(
                        fillcolor: Colors.blue,
                        isselected: true,
                      ),
                      Matrialcolor(
                        fillcolor: Colors.green,
                        isselected: false,
                      ),
                      Matrialcolor(
                        fillcolor: Colors.yellow,
                        isselected: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    product.subtitle,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  "السعر ${product.salary} ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: secondrycolor),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(product.information,
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
