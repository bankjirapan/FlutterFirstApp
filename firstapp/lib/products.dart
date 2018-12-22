import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> ProductList;

  Products(this.ProductList);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: ProductList.map(
      (Element) => Card(
            child: Column(
              children: <Widget>[Image.asset("assets/food.jpg"), Text(Element)],
            ),
          ),
    ).toList());
  }
}
