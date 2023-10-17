import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/contact_screen.dart';
import 'package:flutter_application_1/views/screens/new_screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.purple[100],
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/contact-screen': (context) => const ContactScreen(),
        '/new-screen': (context) => const NewScreen(),
      },
      home: const ContactScreen(),
    );
  }
}
