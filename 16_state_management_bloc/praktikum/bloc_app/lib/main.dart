import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/contact_bloc.dart';
import 'package:flutter_application_1/views/screens/contact_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ContactBloc>(
          create: (context) => ContactBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorSchemeSeed: Colors.blue,
          fontFamily: 'Lato',
        ),
        home: const ContactPage(),
      ),
    );
  }
}
