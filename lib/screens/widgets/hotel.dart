import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/utility/media.dart';

import '../../utility/app_styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel });

  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: size.width*0.7,
      height: 400,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppStyles.ticketBlue,
        borderRadius: BorderRadius.circular(18),
        // border: Border.all(color: Colors.red, width: 4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              // border: Border.all(color: Colors.red, width: 4),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              )
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              hotel['place'],
              style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height:5),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              hotel['destination'],
              style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height:5),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "\$${hotel['price']}/night",
              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
