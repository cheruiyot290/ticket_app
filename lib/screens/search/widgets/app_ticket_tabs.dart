import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utility/app_styles.dart';
import 'app_text_icon.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        // color: const Color(0xffcacee0),
        color: Colors.white,
      ),
      child: const Row(children: [
        AppTabs(tabText: "Airline Tickets", tabColor: true,),
        AppTabs(tabText: "Hotels", tabBorder: true,),
      ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  const AppTabs({super.key, required this.tabText, this.tabBorder = false, this.tabColor=false});
  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.44,
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(left: Radius.circular(50))
            : const BorderRadius.horizontal(right: Radius.circular(50)),
        // border: Border.all(color: Colors.grey),
        // color: Colors.grey[300],
        color: tabColor == false? Colors.transparent : Colors.grey[300],
      ),
      child: Center(
          child: Text(
        tabText,
        style: AppStyles.headLineStyle1,
      )),
    );
  }
}
