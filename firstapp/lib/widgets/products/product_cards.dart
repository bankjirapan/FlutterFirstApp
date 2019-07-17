import 'package:firstapp/widgets/products/product_des.dart';
import 'package:flutter/material.dart';
import './price_tag.dart';
import '../../pages/productDetail.dart';
import '../../models/product_model.dart';

class ProductCards extends StatelessWidget {
  final ProductModel product;
  final int productIndex;

  ProductCards(this.product, this.productIndex);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product.image),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  product.title,
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(width: 8.0),
                PriceTag(product.price.toString())
              ],
            ),
          ),
          ProductDescription("Cake Rose , made in thailand"),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.info),
                color: Colors.orange,
                iconSize: 30,
                onPressed: () {
                  Navigator.push<bool>(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext contaxt) =>
                          ProductDetailPage(product.title,product.image),
                    ),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.pink,
                iconSize: 30,
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
