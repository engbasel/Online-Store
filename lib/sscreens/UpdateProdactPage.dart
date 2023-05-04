import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:onlineshop1/Componant/coustomTextBoutton.dart';
import 'package:onlineshop1/Models/ProductsModel.dart';
import 'package:onlineshop1/Servesess/UpdateProdact.dart';
import '../Componant/CoustomTextFild.dart';

class UpdateProdcatPage extends StatefulWidget {
  // UpdateProdcatPage({
  //   this.price,
  //   this.Discription,
  //   this.image,
  //   this.ProdactName,
  // });
  static String Id = 'UpdateProductPage';

  @override
  State<UpdateProdcatPage> createState() => _UpdateProdcatPageState();
}

class _UpdateProdcatPageState extends State<UpdateProdcatPage> {
  dynamic? ProdactName;

  dynamic? Discription;

  dynamic? price;

  dynamic? image;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel Prodact =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'UpdateProdact',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: 100),
                CustomTextField(
                    keyboardType: TextInputType.text,
                    hentText: 'New Prodact Name',
                    onChanged: (DataProdactName) {
                      ProdactName = DataProdactName;
                    }),
                SizedBox(height: 20),
                CustomTextField(
                    keyboardType: TextInputType.text,
                    hentText: 'Discription',
                    onChanged: (DataDiscription) {
                      Discription = DataDiscription;
                    }),
                SizedBox(height: 20),
                CustomTextField(
                    hentText: 'price',
                    keyboardType: TextInputType.number,
                    onChanged: (Dataprice) {
                      price = Dataprice;
                    }),
                SizedBox(height: 20),
                CustomTextField(
                    keyboardType: TextInputType.text,
                    hentText: 'image',
                    onChanged: (Dataimagea) {
                      image = Dataimagea;
                    }),
                SizedBox(height: 70),
                CusttomBottom(
                  TextBottom: 'Update',
                  ONtaped: () {
                    isloading = true;
                    setState(() {});
                    try {
                      UpdateProdactrefactorMethood(Prodact);
                      print('Sucess');
                    } catch (Exption) {
                      print(Exption.toString());
                    }
                    setState(() {});
                    isloading = false;
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void UpdateProdactrefactorMethood(ProductModel Prodact) {
    updateProdactServes().UpdateProdect(
      id: Prodact.id,
      category: Prodact.description,
      price: price == null ? Prodact.price.toString() : price!,
      title: ProdactName == null ? Prodact.title : ProdactName!,
      description: Discription == null ? Prodact.description : Discription!,
      image: image == null ? Prodact.image : image,
    );
  }
}
