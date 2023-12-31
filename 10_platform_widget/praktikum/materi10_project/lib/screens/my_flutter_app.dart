import 'package:flutter/material.dart';
import 'package:materi10_project/widgets/flutter_app.dart';

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(
          0xff6200ee,
        ),
        actions: [
          Container(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: const Icon(
              Icons.search,
            ),
          ),
        ],
        title: const Center(
          child: Text(
            'My Flutter App',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              FlutterApp(
                title: 'Learn Flutter',
              ),
              FlutterApp(
                title: 'Learn ReactJS',
              ),
              FlutterApp(
                title: 'Learn Tailwind CSS',
              ),
              FlutterApp(
                title: 'Learn UI/UX',
              ),
              FlutterApp(
                title: 'Learn Figma',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
              FlutterApp(
                title: 'Learn Digital Marketing',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(
          0xff03dac5,
        ),
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(
          0xff6200ee,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
            ),
            label: 'Informations',
          ),
        ],
      ),
    );
  }
}
