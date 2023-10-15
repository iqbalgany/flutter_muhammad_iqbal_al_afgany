import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/contact_model.dart';
import 'package:flutter_application_1/service/services.dart';

class ContactViewModel extends ChangeNotifier {
  final ApiService service = ApiService();

  Future<Response> createNewUser() async {
    final response = await service.createContact();

    if (response.statusCode == 201) {
      print('Data contact berhasil ditambahkan: ${response.data}');
    } else {
      print(
          'Gagal menambahkan data contact. status code: ${response.statusCode}');
    }
    return response;
  }

  Future<Contact?> fetchContact() async {
    final jsonData = await service.fetchContactJsonWithDio();
    print('Response JSON: ${jsonData}');
    return Contact.fromJson(jsonData);
  }

  Future<Response> putData() async {
    final Response response = await service.userData();

    if (response.statusCode == 200) {
      print('Permintaan PUT berhasil ${response.data}');
    } else {
      print(
          'Gagal melakukan permintaan PUT. Status code: ${response.statusCode}');
    }
    return response;
  }
}
