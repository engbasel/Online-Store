import 'package:flutter/material.dart';
import 'package:onlineshop1/sscreens/HomePage.dart';
import 'package:onlineshop1/sscreens/UpdateProdactPage.dart';

void main(List<String> args) {
  runApp(OnlineShop());
}

class OnlineShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        homePage.ID: (context) => homePage(),
        UpdateProdcatPage.Id: (context) => UpdateProdcatPage(),
      },
      initialRoute: homePage.ID,
      debugShowCheckedModeBanner: false,
      home: Scaffold(),
    );
  }
}
