import 'package:contact_bloc/blocs/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Contact',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            centerTitle: true,
          ),
          body: Form(
            key: formKey,
            child: Column(
              children: [
                /// NAME
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Name'),
                        hintText: 'Ex : Muhammad Iqbal'),
                  ),
                ),

                /// PHONE NUMBER
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Phone Number'),
                      hintText: '08....',
                    ),
                  ),
                ),

                /// SUBMIT BUTTON
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit'),
                ),

                /// LIST CONTACT
                Expanded(
                  child: ListView.builder(
                    itemCount: 0,
                    itemBuilder: (context, index) => Container(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
