import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final String productName;
  final String productImg;

  ProductDetailPage(this.productName, this.productImg);

  _showWarningDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are you sure ?"),
            content: Text("delete this is product"),
            actions: <Widget>[
              FlatButton(
                child: Text("OKey"),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context, true);
                },
              ),
              FlatButton(
                child: Text("No"),
                onPressed: (){
                   Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

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
              color: Colors.red,
              onPressed: () => _showWarningDialog(context),
            ),
          )
        ],
      ),
    );
  }
}
