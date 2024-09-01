import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/utility/app_styles.dart';
import 'package:ticket_app/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/widgets/big_circle.dart';
import 'package:ticket_app/widgets/big_dot.dart';
import 'package:ticket_app/widgets/text_style_third_fifth_and_sixth.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key, required this.ticket, this.wholeScreen =false});

  final Map<String, dynamic> ticket;
  final bool wholeScreen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 199,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen==true?0:16),
        child: Column(
          children: [
            // Blue part
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21)),
                // border: Border.all(color: Colors.white, width: 1),
                color: AppStyles.ticketBlue,
              ),
              child: Column(
                children: [
                  // Show departure and destination with plane icon and first lines
                  Row(
                    children: [
                      TextStyleSixth(text: ticket["from"]["code"],),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(randomDivider: 6,),
                          ),
                          Center(
                            child: Transform.rotate(angle: 1.57,
                            child: const Icon(Icons.local_airport, color: Colors.white,)),
                          )
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["to"]["code"],),
                    ],
                  ),
                  // Show departure and arrival times
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleSixth(text: ticket["from"]["name"],),
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket["flying_time"],),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["to"]["name"])
                    ],
                  ),
                ],
              ),
            ),
            // Circles
            Container(
              // height: 20,
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(isRight: true,),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 10, width: 5,)),
                  BigCircle(isRight: false,),
                ],
              ),
            ),
            // Orange part
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
                // border: Border.all(color: Colors.white, width: 1),
                color: AppStyles.ticketOrange,
              ),
              child: Column(
                children: [
                  // Show departure and destination with plane icon and first lines
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleSixth(text: ticket["date"],),
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket["departure_time"]),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket["number"].toString(),)
                    ],
                  ),
                  // Show departure and arrival times
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      const TextStyleSixth(text: 'Date'),
                      Expanded(child: Container()),
                      const TextStyleThird(text: 'Departure time'),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: 'Number',)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
