import 'dart:convert';

import 'package:http/http.dart';
import 'package:onlineshop1/Helper/Api.dart';
// import 'package:http/http.dart' as http;

class AllCatigores {
  late String baseURL = 'https://fakestoreapi.com';

  Future<List<dynamic>> GetAllcatigorisList() async {
    List<dynamic> Data = await Api().get(Url: '$baseURL/products/categories');
    return Data;
  }
}
