import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/contact_page.dart';
import 'package:flutter_application_1/views/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routes: {
        '/home-page': (context) => HomePage(),
        '/login-page': (context) => LoginPage(),
      },
      home: LoginPage(),
    );
  }
}
