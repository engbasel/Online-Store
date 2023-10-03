import 'package:onlineshop1/Helper/Api.dart';
import '../Models/ProductsModel.dart';

class AllProductsService {
  late String baseURL = 'https://fakestoreapi.com';
  Future<List<ProductModel>> GetAllProducts() async {
    List<dynamic> Data = await Api().get(Url: '$baseURL/products');
    List<ProductModel> prodactList = [];
    for (int i = 0; i < Data.length; i++) {
      prodactList.add(
        ProductModel.fromJson(Data[i]),
      );
    }
    return prodactList;
  }
}
