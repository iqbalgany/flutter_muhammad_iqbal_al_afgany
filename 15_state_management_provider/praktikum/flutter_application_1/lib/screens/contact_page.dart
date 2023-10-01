import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/contact_model.dart';

import 'package:flutter_application_1/providers/contact_provider.dart';
import 'package:provider/provider.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<ContactProvider>(
      context,
      listen: false,
    );
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            /// Phone Icon
            const Padding(
              padding: EdgeInsets.only(bottom: 10, top: 10),
              child: Icon(
                Icons.phone_android,
              ),
            ),

            /// Create New Contacts
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Create New Contacts',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'A dialog is a type of modal window appears in front of app content to providecrictical information, or prompt for decision to provide critical information, or prompt for a decision to be made.',
                textAlign: TextAlign.justify,
              ),
            ),

            /// NAME
            Consumer<ContactProvider>(
              builder: (context, contactProvider, child) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    controller: contactProvider.nameController,
                    decoration: const InputDecoration(
                      label: Text('Name'),
                    ),
                    validator: contactProvider.validateName,
                  ),
                );
              },
            ),

            /// PHONE NUMBER
            Consumer<ContactProvider>(
              builder: (context, contactProvider, child) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    controller: contactProvider.phoneNumberController,
                    decoration: const InputDecoration(
                      label: Text('Phone Number'),
                    ),
                    validator: contactProvider.validatePhoneNumber,
                  ),
                );
              },
            ),

            /// SUBMIT BUTTON
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  if (contactProvider.selectedIndex == -1) {
                    contactProvider.addContact();
                  } else {
                    contactProvider.updateContact();
                  }
                }
              },
              child: const Text('Submit'),
            ),

            /// LIST CONTACT
            Expanded(
              child: Consumer<ContactProvider>(
                builder: (context, contactProvider, child) {
                  return ListView.builder(
                    itemCount: contactList.length,
                    itemBuilder: (context, index) {
                      final Contact contact = contactList[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            contact.name[0].toUpperCase(),
                          ),
                        ),
                        title: Text(contact.name),
                        subtitle: Text(contact.phoneNumber),
                        trailing: SizedBox(
                          width: 100,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  contactProvider.editContact(index);
                                },
                                icon: const Icon(Icons.edit),
                              ),
                              IconButton(
                                onPressed: () {
                                  contactProvider.deleteContact(index);
                                },
                                icon: const Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
