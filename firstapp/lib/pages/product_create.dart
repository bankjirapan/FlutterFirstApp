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

  final Map<String,dynamic> _formData = {
    'title' : null,
    'description' : null,
    'price' : 0,
    'image': 'assets/food.jpg'
  };
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    widget.addProduct(_formData);
    Navigator.popAndPushNamed(context, "/");
  }

  Widget _buildProductNameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Product title",
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return "product is required";
        }
      },
      autofocus: true,
      onSaved: (String value) {
        setState(() {
          _formData['title'] = value.toUpperCase();
        });
      },
    );
  }

  Widget _buildDescriptionField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Product description",
      ),
      maxLines: 4,
      validator: (String value) {
        if (value.isEmpty || value.length < 5) {
          return "description is required and more than 5";
        }
      },
      onSaved: (String value) {
        setState(() {
          _formData['description'] = value;
        });
      },
    );
  }

  Widget _buildPriceField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Product price",
      ),
      keyboardType: TextInputType.number,
      validator: (String value) {
        if (value.isEmpty || RegExp('(\d+\.\d{1,2})').hasMatch(value)) {
          return "price is required or price invalid";
        }
      },
      onSaved: (String value) {
        setState(() {
          _formData['price'] = double.parse(value);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    final double targetPadding = deviceWidth - targetWidth;

    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.symmetric(horizontal: targetPadding / 2),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              _buildProductNameField(),
              _buildDescriptionField(),
              _buildPriceField(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                        child: Text("Save"),
                        textColor: Colors.white,
                        color: Colors.green,
                        onPressed: _submitForm),
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
        ),
      ),
    );
  }
}
