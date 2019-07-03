import 'package:flutter/material.dart';
import '../product_manager.dart';


class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  HomePage(this.products);

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
                      Navigator.pushNamed(context, "/admin");
                    },
                  ),
                  ListTile(
                    title: Text("All Product"),
                    onTap: () {},
                  )
                ],
              ),
            ),
            appBar: AppBar(title: Text('Hello FirstApp')),
            body: ProductManager(products)));
  }
}
