import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future createContact({
    required String name,
    required String phoneNumber,
  }) async {
    try {
      final Response response =
          await _dio.post("https://reqres.in/api/users", data: {
        'name': name,
        'phoneNumber': phoneNumber,
      });

      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future userData({
    required int id,
    required String title,
    required String body,
    required int userId,
  }) async {
    try {
      final Response response =
          await _dio.put("https://jsonplaceholder.typicode.com/posts/1", data: {
        'userId': 1,
        'id': 1,
        'title':
            'sunt aut facere repellat provident occaecati excepturi optio reprehenderit',
        'body':
            'quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto'
      });

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}

class ContactData {
  int id;
  String name;
  String phone;

  ContactData({
    required this.id,
    required this.name,
    required this.phone,
  });

  factory ContactData.fromJson(Map<String, dynamic> json) {
    return ContactData(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
    );
  }
}

void main() {
  Map<String, dynamic> dataJson = {
    "id": 2,
    "name": "John Thor",
    "phone": "0857676565688"
  };

  ContactData contactData = ContactData.fromJson(dataJson);

  print('Id : ${contactData.id}');
  print('Name : ${contactData.name}');
  print('Phone : ${contactData.phone}');
}
