import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './product_manager.dart';

// main() => runApp(MyApp());

void main() {
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
  runApp(MyApp());
}

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
        // debugShowMaterialGrid: true,
        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blueGrey,
            accentColor: Colors.brown),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Hello FirstApp'),
            ),
            body: ProductManager()));
  }
}
