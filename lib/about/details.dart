import 'package:flutter/material.dart';
import 'package:store_app/about/aboutdetail.dart';
import 'package:store_app/constant/products.dart';

import '../constant/colors.dart';

class Details extends StatelessWidget {
  final Products product;
  const Details({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primarycolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Backgroundcolor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: secondrycolor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            padding: EdgeInsets.only(right: 10),
          ),
          title: Text(
            "العوده",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
        body: Aboutdetail(
          product: product,
        ));
  }
}
