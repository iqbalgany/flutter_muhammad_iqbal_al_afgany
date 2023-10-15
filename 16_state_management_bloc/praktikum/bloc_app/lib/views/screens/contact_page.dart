import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/contact_bloc.dart';
import 'package:flutter_application_1/models/contact_model.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBloc = context.read<ContactBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
      ),
      body: Form(
        key: contactBloc.formKey,
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
            BlocBuilder<ContactBloc, ContactState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    controller: contactBloc.nameController,
                    decoration: const InputDecoration(
                      label: Text('Name'),
                    ),
                    validator: contactBloc.validateName,
                  ),
                );
              },
            ),

            /// PHONE NUMBER
            BlocBuilder<ContactBloc, ContactState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextFormField(
                    controller: contactBloc.phoneNumberController,
                    decoration: const InputDecoration(
                      label: Text('Phone Number'),
                    ),
                    validator: contactBloc.validatePhoneNumber,
                  ),
                );
              },
            ),

            /// SUBMIT BUTTON
            ElevatedButton(
              onPressed: () {
                contactBloc.add(AddContactEvent());
              },
              child: const Text('Submit'),
            ),

            /// LIST CONTACT
            BlocBuilder<ContactBloc, ContactState>(
              builder: (context, state) {
                if (state is Contacts) {
                  if (state.contacts.isEmpty) {
                    return const Center(
                      child: SizedBox(),
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: state.contacts.length,
                        itemBuilder: (context, index) {
                          final ContactModel contact = state.contacts[index];
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
                                      contactBloc.add(EditContactEvent(
                                          contact: contact, index: index));
                                    },
                                    icon: const Icon(Icons.edit),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      contactBloc.add(
                                        DeleteContactEvent(index: index),
                                      );
                                    },
                                    icon: const Icon(Icons.delete),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
