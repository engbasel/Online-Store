// packges will used

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({
    required String Url,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }

    http.Response ApiResponse =
        await http.get(Uri.parse(Url), headers: headers);
    if (ApiResponse.statusCode == 200) {
      return jsonDecode(ApiResponse.body);
    } else {
      throw Exception(
          'theres problem in states Code ${ApiResponse.statusCode}');
    }
  }

// -----------------------------------postRequstMethod---------------------
  Future<dynamic> PostRequset({
    required String Url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response postRespons =
        await http.post(Uri.parse(Url), body: body, headers: headers);
    if (postRespons.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(postRespons.body);
      return data;
    } else {
      throw Exception(
          'theres problem in states Code ${postRespons.statusCode} error in body ${jsonDecode(postRespons.body)}');
    }
  }

  // ---------------------------------------Put request--------------------------
  Future<dynamic> put({
    required dynamic url,
    @required dynamic body,
    @required dynamic? token,
  }) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    print('Url = $url  and body= $body and toaken is = $token ');
    http.Response postRespons =
        await http.put(Uri.parse(url), body: body, headers: headers);
    if (postRespons.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(postRespons.body);

      print(data);
      return data;
    } else {
      throw Exception(
          'theres problem in states Code ${postRespons.statusCode} error in body ${jsonDecode(postRespons.body)}');
    }
  }
}

 // {
      //   'title': 'test product',
      //   'price': '13.5',
      //   'description': 'lorem ipsum set',
      //   'image': 'https://i.pravatar.cc',
      //   'category': 'electronic',
      // },