import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ios extends StatelessWidget {
  const Ios({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.grey[800],
        middle: Text(
          'CupertinoApp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      child: Center(
        child: Text(
          'This is CupertinoApp',
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
