import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productName;
  final String productImg;

  ProductDetailPage(this.productName, this.productImg);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product detail"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(this.productImg),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(this.productName),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: FlatButton(
              child: Text("Back"),
              color: Colors.blue,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10)),
              onPressed: () {
                Navigator.pop(context);
              },
            ),  
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: FlatButton(
              child: Text("Delete"),
              color : Colors.red,
              onPressed: (){
                Navigator.pop(context,true);
              },
            ),
          )
        ],
      ),
    );
  }
}
