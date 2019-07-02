import 'package:flutter/material.dart';
import './home.dart';

class Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('LOGIN'),
          color: Colors.green,
          onPressed: () {
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(builder: (BuildContext context) => HomePage()),
            // );

            Navigator.popAndPushNamed(context, "/home");
          },
        ),
      )
    );
  }
}
