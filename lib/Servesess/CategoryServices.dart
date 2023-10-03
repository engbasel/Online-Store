import 'package:onlineshop1/Helper/Api.dart';

import '../Models/ProductsModel.dart';

class CatigoryServes {
  late String baseURL = 'https://fakestoreapi.com';
  Future<List<ProductModel>> GetCatigoryProdact(
      {required String CatigoryName}) async {
    List<dynamic> Data =
        await Api().get(Url: '$baseURL/products/category/$CatigoryName');
    List<ProductModel> prodactList = [];
    for (int i = 0; i < Data.length; i++) {
      prodactList.add(ProductModel.fromJson(Data[i]));
    }
    return prodactList;
  }
}
