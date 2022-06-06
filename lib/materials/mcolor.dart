import 'package:flutter/material.dart';
import 'package:store_app/constant/colors.dart';

class Matrialcolor extends StatelessWidget {
  const Matrialcolor({
    Key? key,
    required this.fillcolor,
    this.isselected = false,
  }) : super(key: key);
  final Color fillcolor;
  final bool isselected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isselected ? secondrycolor : Colors.transparent)),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillcolor),
      ),
    );
  }
}
