import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {

  final String text;

  ProductDescription(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(5)),
      child: Text(this.text),
    );
  }
}
