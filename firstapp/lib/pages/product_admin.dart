import 'package:firstapp/models/product_model.dart';
import 'package:firstapp/pages/product_edit.dart';
import 'package:flutter/material.dart';

import './product_list.dart';

class ProductAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function updateProduct;
  final Function deleteProduct;

  final List<ProductModel> products;

  ProductAdminPage(
      this.addProduct, this.updateProduct, this.deleteProduct, this.products);

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
              children: <Widget>[
                ProductEditPage(addProduct: addProduct),
                ProductListPage(products, updateProduct, deleteProduct)
              ],
            )));
  }
}
