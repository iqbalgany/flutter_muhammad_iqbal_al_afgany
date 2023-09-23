import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({
    super.key,
  });

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  Map<String, dynamic> args = {};
  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Screen',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset(args['gambar']!),
      ),
    );
  }
}
