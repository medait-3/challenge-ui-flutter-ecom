import 'package:flutter/material.dart';
import 'package:uiecom/ecom/product/home.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Product List',
      theme: ThemeData(
        primarySwatch: Colors.blue,useMaterial3: true
      ),
      home: homeecom(),
    );
  }
}
