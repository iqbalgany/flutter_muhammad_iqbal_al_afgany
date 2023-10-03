import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/sign_in_provider.dart';
import 'package:flutter_application_1/views/screens/sign_in_page.dart';
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
          create: (context) => SignInProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        routes: {
          '/home-page': (context) => const HomePage(),
          '/login-page': (context) => const SignInPage(),
        },
        home: const SignInPage(),
      ),
    );
  }
}
