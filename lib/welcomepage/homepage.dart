//import 'dart:ui';

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/about/details.dart';
import 'package:store_app/constant/colors.dart';
import 'package:store_app/materials/matrialcard.dart';
import 'package:store_app/constant/products.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primarycolor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primarycolor,
          title: Text(
            "اهلا بكم في متجري",
            //  style: GoogleFonts.getFont("Almrai"),
          ),
          centerTitle: false,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
        ),
        body: Column(
          children: [
            SizedBox(
              height: dpadding,
            ),
            Expanded(
                child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: Backgroundcolor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                ),
                ListView.builder(
                  itemCount: materiales.length,
                  itemBuilder: (context, index) => procard(
                    click: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Details(
                          product: materiales[index],
                        );
                      }));
                    },
                    itemindex: index,
                    product: materiales[index],
                  ),
                ),
              ],
            ))
          ],
        ));
  }

  products(int index) {}
}
