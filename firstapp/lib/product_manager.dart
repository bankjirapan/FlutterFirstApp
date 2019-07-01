import 'package:flutter/material.dart';
import './product.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _product = [];

  @override
  void initState() {
   
   if(widget.startingProduct != null){
      this._product.add(widget.startingProduct);
   }
    super.initState();
  }

  void _addProduct(String product){
      setState(() {
                _product.add(product);
              });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct)
        ),
       Expanded(child: Products(_product),)
      ],
    );
  }
}
