import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/widgets/ticket_view.dart';

import '../utils/all_json.dart';

class Tickets extends StatelessWidget {
  const Tickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('All Tickets',
        style: TextStyle(fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        ),
        ),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: ticketList.map((singleTicket) => Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                  child: TicketView(ticket: singleTicket, wholeScreen: true,))).toList(),
            ),
          )
        ],
      )
    );
  }
}
