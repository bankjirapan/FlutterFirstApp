
import 'package:firstapp/pages/home.dart';
import 'package:firstapp/pages/product_admin.dart';
import 'package:flutter/material.dart';
import './models/product_model.dart';
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
  List<ProductModel> _products = [];

  void _addProduct(ProductModel product) {
    setState(() {
      _products.add(product);
    });
    print(_products);
  }

  void _updateProduct(int index,ProductModel product){
    setState(() {
      _products[index] = product;
    });
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
          fontFamily: "Roboto",
          brightness: Brightness.light,
          primaryColor: Color(0xFF212D47),
          accentColor: Colors.brown),
      routes: {
        '/': (BuildContext context) => HomePage(_products),
        '/admin': (BuildContext context) =>
            ProductAdminPage(_addProduct,_updateProduct, _deleteProduct,_products)
      },
      onGenerateRoute: (RouteSettings routeSetting) {
        return MaterialPageRoute(
            builder: (BuildContext context) => HomePage(_products));
      },
    );
  }
}
