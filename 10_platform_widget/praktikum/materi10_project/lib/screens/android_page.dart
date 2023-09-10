import 'package:flutter/material.dart';

class Android extends StatefulWidget {
  const Android({super.key});

  @override
  State<Android> createState() => _AndroidState();
}

class _AndroidState extends State<Android> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'MaterialApp',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                'Home',
              ),
            ),
            ListTile(
              title: Text(
                'Settings',
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'This is MaterialApp',
        ),
      ),
    );
  }
}
