import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/tickets.dart';
import 'package:ticket_app/utility/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText, required this.function});
  final String bigText;
  final String smallText;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle3),
        InkWell(
          onTap: function,
          child: Text(smallText, style: AppStyles.textStyle?.copyWith(color: AppStyles.primaryColor)),
        )
      ],
    );
  }
}
