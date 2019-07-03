import 'package:flutter/material.dart';
import '../product_manager.dart';
import './product_admin.dart';

class HomePage extends StatelessWidget {

final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  HomePage(this.products,this.addProduct,this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            drawer: Drawer(
              child: Column(
                children: <Widget>[
                  AppBar(
                    automaticallyImplyLeading: false,
                    title: Text("Menu"),
                  ),
                  ListTile(
                    title: Text("Product admin"),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ProductAdminPage()));
                    },
                  ),
                  ListTile(
                    title: Text("All Product"),
                    onTap: () {
                      
                    },
                  )
                ],
              ),
            ),
            appBar: AppBar(title: Text('Hello FirstApp')),
            body: ProductManager(this.products,this.addProduct,this.deleteProduct)));
  }
}
