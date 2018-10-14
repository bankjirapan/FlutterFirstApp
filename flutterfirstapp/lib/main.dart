import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO : implements create state
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyFirstApp> {
  List<String> _products = ["Food Tester"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyFirstApp"),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
              child: RaisedButton(
                child: Text('Add Product'),
                onPressed: () {
                  setState(() {
                    _products.add('Advanced Food Tester');
                    print(_products);
                  });
                },
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}
