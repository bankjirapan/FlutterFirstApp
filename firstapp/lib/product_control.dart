import 'package:flutter/material.dart';


class ProductControl extends StatelessWidget{

  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
   
   return RaisedButton(
            onPressed: () {
              this.addProduct('Sweet food');
            },
            child: Text("add Product"),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
          );
    
    
  }

}