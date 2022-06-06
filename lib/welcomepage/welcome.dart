import 'package:flutter/material.dart';
import 'package:store_app/constant/colors.dart';
import 'package:store_app/welcomepage/homepage.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolor,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Image.asset("images/app.jpg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Text(
            "اهلا بك في المتجر الاكتروني ",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
            child: Text(
              "ابدا الان",
              style: TextStyle(fontSize: 30),
            ),
          ),
        )
      ]),
    );
  }
}
