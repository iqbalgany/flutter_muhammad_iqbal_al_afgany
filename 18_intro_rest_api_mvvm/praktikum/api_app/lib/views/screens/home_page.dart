import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/contact_view_model.dart';
import 'package:provider/provider.dart';

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
        title: Text('API'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Consumer<ContactViewModel>(
              builder: (context, contactViewModel, child) {
                return ElevatedButton(
                  onPressed: () async {
                    await contactViewModel.createNewUser();
                  },
                  child: const Text('POST Request'),
                );
              },
            ),
            const SizedBox(height: 20),
            Consumer<ContactViewModel>(
              builder: (context, contactViewModel, child) {
                return ElevatedButton(
                  onPressed: () async {
                    await contactViewModel.fetchContact();
                  },
                  child: const Text('Ambil Data Kontak'),
                );
              },
            ),
            const SizedBox(height: 20),
            Consumer<ContactViewModel>(
              builder: (context, myViewModel, child) {
                return ElevatedButton(
                  onPressed: () async {
                    await myViewModel.putData();
                  },
                  child: const Text('Kirim PUT Request'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
