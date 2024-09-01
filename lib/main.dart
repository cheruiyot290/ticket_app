import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home.dart';
import 'package:ticket_app/screens/home_page.dart';
import 'package:ticket_app/screens/tickets.dart';

import 'components/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
      routes: {
        '/home': (context) => const HomePage(),
        '/all_tickets': (context) => const Tickets(),
      },
    );
  }
}


