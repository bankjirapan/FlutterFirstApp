import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager(this.startingProduct);


  @override
  State<StatefulWidget> createState() {
    return ProductManagerComponent();
  }
}

class ProductManagerComponent extends State<ProductManager> {

  List<String> _ProductList = [];

  @override
    void initState() {
      _ProductList.add(widget.startingProduct);
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blueGrey,
                  onPressed: () {
                    setState(() {
                      _ProductList.add("Food Tester");
                    });
                  },
                  child: Text("Add Product"),
                ),
              ),
              Products(_ProductList)
            ],
          );
  }
}
