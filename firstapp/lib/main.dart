import 'package:flutter/material.dart';
import './product_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppComponents();
  }
}

class _MyAppComponents extends State<MyApp> {
  @override
  Widget build(contaxt) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light, primarySwatch: Colors.blueGrey),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Hello FirstApp'),
            ),
            body: ProductManager()));
  }
}
