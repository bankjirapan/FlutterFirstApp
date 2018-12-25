import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  final List<String> ProductList;

  Products(this.ProductList);

  Widget _productItems(BuildContext contaxt, int index){

      return Card(
            child: Column(
              children: <Widget>[
              Image.asset("assets/food.jpg"), 
              Text(ProductList[index]),
              ],
            ),
      );
  }
  

  @override
  Widget build(BuildContext context) {
    return ProductList.length > 0 ? ListView.builder(
        itemBuilder: _productItems,
        itemCount: ProductList.length,
    ) : Center(
        child: Text("No product found , please add some"),
    );
  }
}
