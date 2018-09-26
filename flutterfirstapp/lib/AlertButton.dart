import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AlertButtons extends StatelessWidget{

  AlertButtons({@required this.ClickButton});

  final GestureTapCallback ClickButton;

  @override
  Widget build(BuildContext context) {


    return new RawMaterialButton(
      child: Text('Click'),
      fillColor: Colors.deepOrange,
      splashColor:  Colors.amber,
      onPressed: ClickButton,
      shape: const StadiumBorder(),
    );

  }




}