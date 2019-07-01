import 'package:flutter/material.dart';
import './pages/productDetail.dart';

class Products extends StatelessWidget {
  final List<Map<String,String>> products;
  final Function deleteProduct;

  Products(this.products,{this.deleteProduct});

  Widget _buildItemsCard(BuildContext contaxt, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(
            products[index]['title'],
            style: TextStyle(fontSize: 20),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.black,
                textColor: Colors.white,
                child: Text("Detail"),
                onPressed: () {
                  Navigator.push<bool>(
                    contaxt,
                    MaterialPageRoute(
                      builder: (BuildContext contaxt) => ProductDetailPage(
                        products[index]['title'],
                        products[index]['image']
                        ),
                    ),
                  ).then((bool value) {
                   
                   if(value){
                     deleteProduct(index);
                   }
                
                  });
                },
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildItemsList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildItemsCard,
        itemCount: products.length,
      );
    } else {
      productCard = Center(
        child: Text("No Product. Please add your product"),
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    // return products.length > 0 ? ListView.builder(
    //   itemBuilder: _buildItemsCard,
    //   itemCount: products.length,
    // ) : Center(
    //   child: Text("No products"),
    // );

    return _buildItemsList();
  }
}
