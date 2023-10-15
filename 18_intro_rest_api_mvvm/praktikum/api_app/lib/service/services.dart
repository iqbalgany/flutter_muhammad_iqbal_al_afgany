import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> createContact() async {
    try {
      final Response response = await _dio.post(
        "https://reqres.in/api/users",
        data: {
          'name': 'Muhammad Iqbal Al Afgany',
          'phoneNumber': '08123456789',
        },
      );

      return response;
    } catch (e) {
      throw Exception('Post error $e');
    }
  }

  Future fetchContactJsonWithDio() async {
    try {
      final Response response = await _dio.get(
          "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2");
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Gagal mengambil data kontak');
      }
    } catch (e) {
      throw Exception('Gagal mengambil data kontak: $e');
    }
  }

  Future userData() async {
    try {
      final Response response =
          await _dio.put("https://jsonplaceholder.typicode.com/posts/1", data: {
        'userId': 1,
        'id': 1,
        'title': 'foo',
        'body': 'bar',
      });

      return response;
    } catch (e) {
      throw Exception('Gagal melakukan permintaan PUT: $e');
    }
  }

  Future<Response> fetchImage() async {
    try {
      final Response response = await _dio
          .get('https://api.dicebear.com/7.x/pixel-art/svg?seed=John');
      print(response);
      return response;
    } catch (e) {
      print('Terjadi kesalahan: $e');
      throw Exception('Gagal mengambil data dari API: $e');
    }
  }
}
