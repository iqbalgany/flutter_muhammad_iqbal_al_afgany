import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/contact_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/providers/contact_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContactProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        fontFamily: 'Lato',
      ),
      home: const ContactPage(),
    );
  }
}
