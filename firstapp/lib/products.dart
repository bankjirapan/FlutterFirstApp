import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  final List<String> productList;

  Products(this.productList);

  Widget _productItems(BuildContext contaxt, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("assets/food.jpg"),
          Text(productList[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text("Detail"),
                onPressed: () => Navigator.push(
                    contaxt,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }

  // if widget 1

  /*
  @override
  Widget build(BuildContext context) {
    return ProductList.length > 0 ? ListView.builder(
        itemBuilder: _productItems,
        itemCount: ProductList.length,
    ) : Center(
        child: Text("No product found , please add some"),
    );
  }
  */
  @override
  Widget build(BuildContext context) {
    return builditemslist();
  }

  Widget builditemslist() {
    Widget productCard;

    if (productList.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _productItems,
        itemCount: productList.length,
      );
    } else {
      productCard = Center(
        child: Text("No product found , please add some"),
      );
    }

    return productCard;
  }
}
