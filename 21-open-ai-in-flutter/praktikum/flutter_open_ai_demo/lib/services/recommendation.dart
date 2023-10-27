import 'dart:convert';

import 'package:flutter_open_ai_demo/constants/open_ai.dart';
import 'package:flutter_open_ai_demo/models/open_ai.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class RecommendationService {
  static Future<GptData> getRecommendation({
    required String carRegion,
    required String budget,
  }) async {
    late GptData gptData = GptData(
      warning: '',
      id: "",
      object: "",
      created: 0,
      model: "",
      choices: [],
      usage: Usage(
        promptTokens: 0,
        completionTokens: 0,
        totalTokens: 0,
      ),
    );

    try {
      var url = Uri.parse("https://api.openai.com/v1/completions");

      Map<String, String> headers = {
        'Content-Type': 'application/json;charset=UTF-8',
        'Charset': 'utf-8',
        'Authorization': 'Bearer $apiKey',
      };

      final formatCurrency = NumberFormat.currency(
        locale: 'id_ID',
        symbol: '',
        decimalDigits: 0,
      );

      String carBudget = formatCurrency.format(int.parse(budget));

      String promptData =
          'Anda adalah seorang ahli mobil. Tolong , berikan saya rekomendasi mobil dari produsen $carRegion dengan anggaran yang setara dengan $carBudget';

      final data = jsonEncode({
        "model": "text-davinci-003",
        "prompt": promptData,
        "temperature": 1,
        "max_tokens": 256,
        "top_p": 1,
        "frequency_penalty": 0,
        "presence_penalty": 0
      });
      print('$carRegion');
      print('$carBudget');

      final response = await http.post(url, headers: headers, body: data);
      if (response.statusCode == 200) {
        gptData = GptData.fromJson(jsonDecode(response.body));
      }
      print('Success');
    } catch (e) {
      print('error');
      throw Exception('Error occured when reading request');
    }

    return gptData;
  }
}
