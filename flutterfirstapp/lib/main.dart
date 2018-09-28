import 'package:flutter/material.dart';

//Start Application
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlutterFirestApp'),
        ),
      ),
    );
  }
}
