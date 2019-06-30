import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Product detail"),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text("Hello product page"),
            ),
            RaisedButton(
              child: Text("Back"),
              onPressed: () => Navigator.pop(context),
              )
          ],
        ));
  }
}
