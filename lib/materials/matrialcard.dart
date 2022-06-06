import 'package:flutter/material.dart';
import 'package:store_app/constant/colors.dart';
import 'package:store_app/constant/products.dart';

import '../constant/products.dart';

class procard extends StatelessWidget {
  const procard({
    required this.itemindex,
    required this.product,
    required this.click,
    Key? key,
  }) : super(key: key);
  final int itemindex;
  final Products product;
  final VoidCallback click;

  @override
  Widget build(BuildContext context) {
    Size pagesize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(dpadding),
      height: 200,
      color: Colors.white,
      child: InkWell(
        onTap: click,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              // color: Colors.green,
            ),
          ),
          Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 220,
                width: 190,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 130,
                width: pagesize.width - 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(product.title),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(product.subtitle),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(dpadding),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                        decoration: BoxDecoration(
                            color: secondrycolor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text('السعر: ${product.salary}'),
                      ),
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
