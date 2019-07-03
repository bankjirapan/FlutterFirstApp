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
  List<Map<String, String>> _products = [];

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
    print(_products);
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(contaxt) {
    return MaterialApp(
      // debugShowMaterialGrid: true,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.brown),
      routes: {
        // '/': (BuildContext context) => Authentication(),
        '/': (BuildContext context) => HomePage(_products, _addProduct, _deleteProduct)
      },
      onGenerateRoute: (RouteSettings routeSetting) {
        return MaterialPageRoute(
            builder: (BuildContext context) => Authentication());
      },
    );
  }
}
