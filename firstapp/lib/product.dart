import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  Widget _buildItemsCard(BuildContext contaxt, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg',width: 200,),
          Text(
            products[index],
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _buildItemsList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildItemsCard,
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
