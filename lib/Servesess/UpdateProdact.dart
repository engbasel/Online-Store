import '../Helper/Api.dart';
import '../Models/ProductsModel.dart';

class updateProdactServes {
  Future<ProductModel> UpdateProdect({
    required dynamic category,
    required dynamic price,
    required dynamic title,
    required dynamic description,
    required dynamic image,
    required dynamic id,
  }) async {
    print('product id  = $id');

    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
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
