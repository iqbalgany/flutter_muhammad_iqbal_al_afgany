import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/contact_model.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  final List<ContactModel> listOfContact = [];
  int selectedIndex = -1;

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nama harus diisi oleh user.';
    }

    final words = value.split(' ');
    if (words.length < 2) {
      return 'Nama harus terdiri dari minimal 2 kata.';
    }

    for (final word in words) {
      if (!isCapitalized(word)) {
        return 'Setiap kata harus dimulai dengan huruf kapital.';
      }
    }

    for (final word in words) {
      if (containsSpecialCharacters(word)) {
        return 'Nama tidak boleh mengandung angka atau karakter khusus.';
      }
    }

    return null;
  }

  bool isCapitalized(String word) {
    return word.isNotEmpty && word[0] == word[0].toUpperCase();
  }

  bool containsSpecialCharacters(String word) {
    final RegExp specialChars = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');
    return specialChars.hasMatch(word);
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor telepon harus diisi oleh user.';
    }

    if (value.length < 7) {
      return 'Digit nomer harus lebih dari 7.';
    } else if (value.length > 15) {
      return 'Digit nomer harus kurang dari 15';
    } else if (!value.startsWith('0')) {
      return 'Nomor telepon harus dimulai dengan angka 0.';
    }

    return null;
  }

  ContactBloc() : super(const Contacts(contacts: [])) {
    on<AddContactEvent>(
      (_, emit) {
        final name = nameController.text;
        final phoneNumber = phoneNumberController.text;
        if (formKey.currentState!.validate()) {
          if (selectedIndex == -1) {
            listOfContact
                .add(ContactModel(name: name, phoneNumber: phoneNumber));
            emit(Contacts(contacts: listOfContact));
          } else {
            listOfContact[selectedIndex] =
                ContactModel(name: name, phoneNumber: phoneNumber);
            emit(Contacts(contacts: listOfContact));
          }
        }
        nameController.clear();
        phoneNumberController.clear();
      },
    );

    on<DeleteContactEvent>(
      (event, emit) {
        listOfContact.removeAt(event.index);

        emit(Contacts(contacts: listOfContact));
      },
    );

    on<EditContactEvent>((event, emit) {
      nameController.text = event.contact.name;
      phoneNumberController.text = event.contact.phoneNumber;
      selectedIndex = event.index;
    });
  }
}
