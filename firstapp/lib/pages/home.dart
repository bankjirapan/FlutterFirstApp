import 'package:flutter/material.dart';
import '../product_manager.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Hello world"),
          ),
          body: ProductManager(),
    );
  }
}
