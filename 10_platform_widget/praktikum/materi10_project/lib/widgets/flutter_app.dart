import 'package:flutter/material.dart';

class FlutterApp extends StatelessWidget {
  String title;
  FlutterApp({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
