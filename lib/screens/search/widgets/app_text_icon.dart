import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.lightBlue,
      ),
      child: const Row(
        children: [
          Icon(Icons.text_fields, size: 24),
          SizedBox(width: 8),
          Text(
            'Icon',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
