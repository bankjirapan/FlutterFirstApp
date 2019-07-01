import 'package:flutter/material.dart';
import './product.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String,String> startingProduct;

  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String,String>> _product = [];

  @override
  void initState() {
   
   if(widget.startingProduct != null){
      this._product.add(widget.startingProduct);
   }
    super.initState();
  }


  void _removeProduct(int index){

    setState(() {
      this._product.removeAt(index);
    });

  }

  void _addProduct(Map<String,String> product){
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
       Expanded(child: Products(_product,deleteProduct: _removeProduct,),)
      ],
    );
  }
}
