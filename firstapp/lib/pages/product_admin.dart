import 'package:flutter/material.dart';
import './product_create.dart';
import './product_list.dart';

class ProductAdminPage extends StatelessWidget {

  final Function addProduct;
  final Function deleteProduct;

  ProductAdminPage(this.addProduct,this.deleteProduct);


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
                    title: Text("All Product"),
                    onTap: () {
                      Navigator.pushNamed(context, "/");
                    },
                  )
                ],
              ),
            ),
            appBar: AppBar(
              title: Text('Product Admin'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: 'Create product',
                    icon: Icon(Icons.create),
                  ),
                  Tab(
                    text: 'My Product',
                    icon: Icon(Icons.list),
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[ProductCreatePage(addProduct), ProductListPage()],
            )));
  }
}
