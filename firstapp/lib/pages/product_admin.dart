import 'package:flutter/material.dart';
import './home.dart';

import './product_create.dart';
import './product_list.dart';

class ProductAdminPage extends StatelessWidget {
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
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  HomePage()));
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
              children: <Widget>[ProductCreatePage(), Product_ListPage()],
            )));
  }
}
