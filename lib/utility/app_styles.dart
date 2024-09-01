import 'package:flutter/material.dart'; // Correct import for TextStyle

Color primary = const Color(0xff687daf);
class AppStyles{
  static Color ticketBlue = const Color(0xff526799);
  static Color ticketGreen = const Color(0xff92d244);
  static Color ticketRed = const Color(0xffe73c3c);
  static Color ticketOrange = const Color(0xfff9a825);
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xffeeedf2);
  static Color textColor = const Color(0xff3b3b3b);
  static TextStyle? textStyle = TextStyle(fontSize: 19, fontWeight: FontWeight.w500, color: textColor);

  static TextStyle? headLineStyle1 = TextStyle(
    fontSize: 27.0,
    color: textColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
  );

  static TextStyle? headLineStyle2 = TextStyle(
    fontSize: 17.0,
    color: primaryColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );
  static TextStyle? headLineStyle3 = TextStyle(
    fontSize: 22.0,
    color: textColor,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
  );
}