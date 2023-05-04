
import 'package:onlineshop1/Helper/Api.dart';

import '../Models/ProductsModel.dart';

class AddProdact {
  Future<ProductModel> addProdact({
    required String category,
    required String price,
    required String title,
    required String description,
    required String image,
  }) async {
    Map<String, dynamic> data = await Api().PostRequset(
      Url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
      // token: token,
    );
    return ProductModel.fromJson(data);
  }
}
