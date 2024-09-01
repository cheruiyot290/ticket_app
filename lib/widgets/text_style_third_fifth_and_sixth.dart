import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextStyleThird extends StatelessWidget {

  final String text;
  const TextStyleThird({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );();
  }
}

class TextStyleFourth extends StatelessWidget {
  const TextStyleFourth({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Text(
        text,
        textAlign: TextAlign.end,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

// class TextStyleFifth extends StatelessWidget {
//   const TextStyleFifth({super.key, required this.text});
//
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: const TextStyle(
//         fontSize: 18,
//         fontWeight: FontWeight.bold,
//         color: Colors.white,
//       ),
//     );
//   }
// }

class TextStyleSixth extends StatelessWidget {
  const TextStyleSixth({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}




