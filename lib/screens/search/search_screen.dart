import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/utility/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("Looking for something?\nYou're definitely at the right place.", style: AppStyles.headLineStyle2?.copyWith(fontSize: 35),),
          const SizedBox(height: 20,),
          const AppTicketTabs(),
          const SizedBox(height: 40,),
          const AppTextIcon(),

        ],
      ),
    );
  }
}
