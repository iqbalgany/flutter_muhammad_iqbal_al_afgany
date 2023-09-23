import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 100,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'gallery');
              },
              child: const ListTile(
                title: Text(
                  'Gallery',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.camera_alt,
                  size: 40,
                ),
                contentPadding: EdgeInsets.all(
                  10,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'contact');
              },
              child: const ListTile(
                title: Text(
                  'Contact',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.contact_phone_rounded,
                  size: 40,
                ),
                contentPadding: EdgeInsets.all(
                  10,
                ),
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'This is Home Screen',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
