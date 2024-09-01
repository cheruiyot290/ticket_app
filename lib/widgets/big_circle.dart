import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;
  const BigCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(decoration: BoxDecoration(
        borderRadius: isRight==true?const BorderRadius.only(
          // topLeft: Radius.circular(10),
          topRight: Radius.circular(15),
          // bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(15),
        ):const BorderRadius.only(
          // topLeft: Radius.circular(10),
          topLeft: Radius.circular(15),
          // bottomLeft: Radius.circular(10),
          bottomLeft: Radius.circular(15),
        ),
        color: Colors.white,
      )),
    );
  }
}
