import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  final Function addProduct;
  ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreateState();
  }
}

class _ProductCreateState extends State<ProductCreatePage> {
  String valueInput = '';
  String description = '';
  double price = 0.00;


    void _submitForm(){
   
                    final Map<String, dynamic> product = {
                      'title': valueInput,
                      'description': description,
                      'price': price,
                      'image': 'assets/food.jpg'
                    };
                    widget.addProduct(product);
                    Navigator.popAndPushNamed(context, "/");
         
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: "Product title",
            ),
            autofocus: true,
            onChanged: (String value) {
              setState(() {
                this.valueInput = value.toUpperCase();
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Product description",
            ),
            maxLines: 4,
            onChanged: (String value) {
              setState(() {
                this.description = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Product price",
            ),
            keyboardType: TextInputType.number,
            onChanged: (String value) {
              setState(() {
                this.price = double.parse(value);
              });
            },
          ),
          Text(this.valueInput),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text("Save"),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: _submitForm
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text("Cancel"),
                  textColor: Colors.white,
                  color: Colors.red,
                  onPressed: () {
                     Navigator.pop(context);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
