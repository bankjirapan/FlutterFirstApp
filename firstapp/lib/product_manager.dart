import 'package:flutter/material.dart';
import './products.dart';
import './productControl.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return ProductManagerComponent();
  }
}

class ProductManagerComponent extends State<ProductManager> {
  List<String> _productList = [];

  @override
  void initState() {
    if (widget.startingProduct != null) {
      _productList.add(widget.startingProduct);
    }

    super.initState();
  }

  void addProduct(String product) {
    setState(() {
      _productList.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0), child: ProductControl(addProduct)),
        Expanded(
          child: Products(_productList),
        )
      ],
    );
  }
}