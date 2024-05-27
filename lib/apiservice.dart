import 'dart:convert';

import 'package:globosoft/model/product.dart';
import 'package:http/http.dart'as http;
 class ApiService {
  //final String baseUrl;

 // ApiService(this.baseUrl);

  Future<Product> fetchData() async {
    final response = await http.get(Uri.parse('https://mansharcart.com/api/getProduct/p_id/2050/key/123456789'));

    if (response.statusCode == 200) {
      return Product.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}