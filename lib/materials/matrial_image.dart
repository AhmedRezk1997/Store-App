import 'package:flutter/material.dart';

class Productimage extends StatelessWidget {
  const Productimage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: size.width,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: size.width,
          width: size.width,
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        ),
        Image.asset(
          image,
          height: size.width,
          width: size.width,
          fit: BoxFit.cover,
        ),
      ]),
    );
  }
}
