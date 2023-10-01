import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/contact_model.dart';

class ContactProvider extends ChangeNotifier {
  final List<Contact> _contacts = [];
  List<Contact> get contacts => _contacts;

  TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController => _nameController;
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController get phoneNumberController => _phoneNumberController;

  int _selectedIndex = -1;
  int get selectedIndex => _selectedIndex;

  void addContact() {
    final name = nameController.text;
    final phoneNumber = phoneNumberController.text;
    contactList.add(Contact(name: name, phoneNumber: phoneNumber));
    resetContact();
    notifyListeners();
  }

  void deleteContact(int index) {
    contactList.removeAt(index);
    notifyListeners();
  }

  void editContact(int index) {
    final contact = contactList[index];
    _nameController.text = contact.name;
    _phoneNumberController.text = contact.phoneNumber;
    _selectedIndex = index;
    notifyListeners();
  }

  void updateContact() {
    final name = nameController.text;
    final phoneNumber = phoneNumberController.text;
    contactList[selectedIndex] = Contact(name: name, phoneNumber: phoneNumber);
    resetContact();
    notifyListeners();
  }

  void resetContact() {
    _nameController.clear();
    _phoneNumberController.clear();
    notifyListeners();
  }

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
}
