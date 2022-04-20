import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/tourism_model.dart';

class ApiService {
  Future<TourismResult> topHeadlines() async {
    final response = await http
        .get(Uri.parse('http://192.168.39.142/databasewisata/index.php'));
    if (response.statusCode == 200) {
      return TourismResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failet to Load top headlines');
    }
  }
}
