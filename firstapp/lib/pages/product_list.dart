import 'package:firstapp/models/product_model.dart';
import 'package:firstapp/pages/product_edit.dart';
import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  final Function updateProduct;
  final Function deleteProduct;
  final List<ProductModel> products;

  ProductListPage(this.products, this.updateProduct,this.deleteProduct);

  Widget iconListButton(BuildContext context,int index){
    return 
    IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return ProductEditPage(
                              product: products[index],
                              updateProduct: updateProduct,
                              productIndex: index);
                        }),
                      );
                    },
                  );
  }

  Widget colunmList(BuildContext context,int index){
    return Column(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(products[index].image),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(products[index].title),
                    ],
                  ),
                  subtitle: Text(products[index].price.toString()),
                  trailing: iconListButton(context,index),
                ),
              ],
            );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            onDismissed: (DismissDirection dismissAction){
              if(dismissAction == DismissDirection.endToStart){
                  deleteProduct(index);
              } else {
                print("other");
              }
            },
            key: Key(products[index].title),
            background: Container(color: Colors.red,),
            child: colunmList(context,index),
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
