import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/contact_model.dart';
import 'package:meta/meta.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final List<ContactModel> listOfContacts = [];

  final formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  int selectedIndex = -1;

  ContactBloc() : super(const Contacts(contacts: [])) {
    on<AddContactEvent>(
      (_, emit) {
        if (formKey.currentState!.validate()) {
          if (selectedIndex == -1) {
            final name = nameController.text;
            final phoneNumber = phoneNumberController.text;
            listOfContacts.add(
              ContactModel(
                name: name,
                phoneNumber: phoneNumber,
              ),
            );
            emit(Contacts(contacts: listOfContacts));
          }
        } else {
          final name = nameController.text;
          final phoneNumber = phoneNumberController.text;
          listOfContacts[selectedIndex] = ContactModel(
            name: name,
            phoneNumber: phoneNumber,
          );
          emit(Contacts(contacts: listOfContacts));
        }
        nameController.clear();
        phoneNumberController.clear();
      },
    );

    on<DeleteContactEvent>(
      (event, emit) {
        listOfContacts.removeAt(event.index);
        emit(
          Contacts(contacts: listOfContacts),
        );
      },
    );

    on<EditContactEvent>((event, emit) {
      phoneNumberController.text = event.phoneNumber;
      nameController.text = event.name;
    });
  }
}
