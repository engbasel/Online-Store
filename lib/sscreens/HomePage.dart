import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlineshop1/Componant/coustomCard.dart';
import 'package:onlineshop1/Servesess/GetAllProdactsServes.dart';

import '../Models/ProductsModel.dart';

class homePage extends StatelessWidget {
  static String ID = 'homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                print('Data add to your Cart');
              },
              icon: Icon(
                FontAwesomeIcons.cartPlus,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 10)
          ],
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'New Trend',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        body: FutureBuilder<List<ProductModel>>(
            future: AllProductsService().GetAllProducts(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductModel> prodcats = snapshot.data!;

                return GridView.builder(
                  itemCount: prodcats.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    // crossAxisSpacing: 10,
                    // mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return CoustomCard(Prodact: prodcats[index]);
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}
