
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './product_cards.dart';

class Products extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  Products(this.products);


  Widget _buildItemsList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: (BuildContext context,int index)=> ProductCards(products[index],index),
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text("No Product. Please add your product"),
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    // return products.length > 0 ? ListView.builder(
    //   itemBuilder: _buildItemsCard,
    //   itemCount: products.length,
    // ) : Center(
    //   child: Text("No products"),
    // );

    return _buildItemsList();
  }
}
