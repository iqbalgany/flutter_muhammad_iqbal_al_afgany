import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:materi10_project/screens/android_page.dart';
import 'package:materi10_project/screens/contact_number.dart';
import 'package:materi10_project/screens/ios_page.dart';
import 'package:materi10_project/screens/my_bottom_navigation_bar_android.dart';
import 'package:materi10_project/screens/my_flutter_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return CupertinoApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Ios(),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyBottomNavigationBar(),
    );
  }
}
