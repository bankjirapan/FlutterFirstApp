import 'package:flutter/material.dart';
import './pages/home.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppComponents();
  }
}

class _MyAppComponents extends State<MyApp> {
  List<String> productList = ['PadGaPao'];

  @override
  Widget build(contaxt) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blueGrey
      ),
      home: Home()
    );
  }
}