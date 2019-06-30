import 'package:flutter/material.dart';
import './product.dart';
class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
    List<String> _product = ['PadGaPao'];

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                   setState(() {
                     _product.add("food");
                   });
                  },
                  child: Text("add Product"),
                  color: Colors.blueGrey,
                  textColor: Colors.white,
                ),
              )
            ,
            Products(_product)
            ],

          );
  }
}
