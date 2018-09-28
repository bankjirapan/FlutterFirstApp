import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AlertButtons extends StatelessWidget{

  AlertButtons({@required this.ClickButton});

  final GestureTapCallback ClickButton;

  @override
  Widget build(BuildContext context) {


    return new RawMaterialButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 7.0,
          horizontal: 20.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
            Icons.add,
            color : Colors.white,
            ),
            Text(
              "Add",
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
      fillColor: Colors.deepOrange,
      splashColor:  Colors.amber,
      onPressed: ClickButton,
      shape: const StadiumBorder(),
    );

  }




}