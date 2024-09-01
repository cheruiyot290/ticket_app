import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/bottom_navbar.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(" ", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.black,
          ),),
        ),
      ),
      body: const BottomNavbar()
    );
  }
}
