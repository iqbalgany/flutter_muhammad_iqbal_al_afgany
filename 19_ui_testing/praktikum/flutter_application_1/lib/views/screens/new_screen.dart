import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/samurai.jpg',
                    scale: 4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Samurai',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.airplanemode_active,
                    size: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: Column(
                      children: [
                        Text('Samurai'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Button'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
