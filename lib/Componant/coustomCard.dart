import 'package:flutter/material.dart';
import 'package:onlineshop1/sscreens/UpdateProdactPage.dart';

import '../Models/ProductsModel.dart';

class CoustomCard extends StatelessWidget {
  CoustomCard({super.key, required this.Prodact});
  double heightCard = 130;
  double widthCard = 220;
  ProductModel Prodact;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProdcatPage.Id, arguments: Prodact);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 30,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            width: widthCard,
            height: heightCard,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 5,
                  bottom: 0,
                  top: 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Prodact.description.substring(0, 10),
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          r'$' '${Prodact.price.toString()}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 200,
            bottom: 180,
            child: Image.network(
              Prodact.image,
              height: 70,
              width: 70,
            ),
          )
        ],
      ),
    );
  }
}
