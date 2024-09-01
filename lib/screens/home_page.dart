import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/widgets/hotel.dart';
import 'package:ticket_app/widgets/app_double_text.dart';
import 'package:ticket_app/widgets/ticket_view.dart';

import '../utility/app_styles.dart';
import '../utility/media.dart';
import '../utils/all_json.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});

  // final Map<String, dynamic> hotel;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyles.headLineStyle2,),
                        const SizedBox(height: 5),
                        Text("Book Tickets", style: AppStyles.headLineStyle1,)
                      ],
                    ),
                    const SizedBox(height: 10, width: 10),
                    Container(
                      width: 50,
                      height: 50,
                      // color: Colors.blue,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(image: AssetImage(AppMedia.baseLogo)
                      )
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:  const Color(0xfff4f6fd)
                  ),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xffbfc205),),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View All', function: () => Navigator.pushNamed(context, "/all_tickets"),),
                const SizedBox(height: 20),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  // child: TicketView(),
                child: Row(
                  children: ticketList.take(2).map((singleTicket) => TicketView(ticket:singleTicket)).toList()
                ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(bigText: 'Hotels', smallText: 'View All', function: () {

                },),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                        children: hotelList.take(2).map((singleHotel) => Hotel(hotel: singleHotel)).toList()
                    ),),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
