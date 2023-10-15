import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/contact_view_model.dart';
import 'package:flutter_application_1/views/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContactViewModel(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorSchemeSeed: Colors.blue,
          fontFamily: 'Lato',
        ),
        home: const HomePage(),
      ),
    );
  }
}
