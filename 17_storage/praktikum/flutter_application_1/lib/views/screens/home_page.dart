import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/contact_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    late SharedPreferences logindata;
    String username = '';

    @override
    void initial() async {
      logindata = await SharedPreferences.getInstance();
      setState(() {
        username = logindata.getString('username').toString();
      });
    }

    @override
    void initState() {
      super.initState();
      initial();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Selamat Datang'),
            Text(username),
            ElevatedButton(
              onPressed: () {
                logindata.setBool('login', true);
                logindata.remove('username');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
