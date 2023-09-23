import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/contact_page.dart';
import 'package:flutter_application_1/screens/gallery_page.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/new_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
      ),
      routes: {
        'home': (context) => const HomePage(),
        'contact': (context) => const Contact(),
        'gallery': (context) => const Gallery(),
        'newScreen': (context) => const NewScreen(),
      },
      home: const HomePage(),
    );
  }
}
