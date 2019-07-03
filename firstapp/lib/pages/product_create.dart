import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {

  // final Function addProduct;
  // ProductCreatePage(this.addProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductCreateState();
  }
}

class _ProductCreateState extends State<ProductCreatePage> {
  String valueInput = '';
  String description = '';
  double price = 0.00;

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
                  onPressed: () {
                    // widget.addProduct(
                    //   {
                    //   'title':this.valueInput,
                    //   'description':this.description,
                    //   'price' : this.price,
                    //   'image':'assets/food.jpg'
                    //   }
                    //   );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text("Save"),
                  textColor: Colors.white,
                  color: Colors.red,
                  onPressed: () {
                    print("Cancel");
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
