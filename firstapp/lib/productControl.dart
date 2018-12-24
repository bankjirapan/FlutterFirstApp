import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {

  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      textColor: Colors.white,
      color: Colors.blueGrey,
      onPressed: () {
        addProduct("TomYumKrung");
      },
      child: Text("Add Product"),
    );
  }
}
