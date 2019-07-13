import 'package:firstapp/widgets/products/product.dart';
import 'package:flutter/material.dart';
// import '../product_manager.dart';

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
                  title: Row(
                    children: [Icon(Icons.home), Text("Product admin")],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/admin");
                  },
                ),
                ListTile(
                  title: Row(
                    children: [Icon(Icons.shopping_cart), Text("Product All")],
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
          appBar: AppBar(title: Text('Hello FirstApp')),
          body: Products(products),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home',),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.settings),
                title: new Text('Setting'),
              ),
            ],
          )),
    );
  }
}
