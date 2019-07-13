
import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget{

  final String price;

  PriceTag(this.price);

  @override
  Widget build(BuildContext context) {

    return  Container(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text(
                    '\$${price}',
                    style: TextStyle(color: Colors.white),
                  ),
                );
  }

}