import 'package:flutter/material.dart';

class Contact extends ChangeNotifier {
  String name = '';
  String phoneNumber = '';

  Contact({
    required this.name,
    required this.phoneNumber,
  });
}

var contactList = [];
