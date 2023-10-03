import 'package:flutter/material.dart';

class SignInProvider extends ChangeNotifier {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String? validatedUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Username harus diisi oleh user';
    }

    return null;
  }

  String? validatedEmail(String? value) {
    if (value!.isEmpty ||
        !RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
            .hasMatch(value)) {
      return 'Masukkan alamat email yang valid';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password harus diisi oleh user.';
    }

    if (value.length < 8) {
      return 'Password harus lebih dari 8 karakter.';
    }

    return null;
  }
}
