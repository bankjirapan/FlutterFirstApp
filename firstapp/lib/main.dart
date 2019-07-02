import 'package:firstapp/pages/authen.dart';
import 'package:firstapp/pages/home.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';


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
        home: Authentication()
        );
  }
}
