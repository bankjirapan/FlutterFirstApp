import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductListPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Image.asset(products[index]['image']),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(products[index]['title']),
              Text(products[index]['price'].toString())
            ],
          ),
        );
      },
      itemCount: products.length,
    ),
    );
  }
}
