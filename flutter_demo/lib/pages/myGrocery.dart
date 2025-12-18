import 'package:flipkart_main_project/pages/images.dart';
import 'package:flutter/material.dart';
import './homepage-methods.dart';

class MyGro extends StatefulWidget {
  const MyGro({super.key});

  @override
  State<MyGro> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyGro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grocery')
      ),
      body: Column(
        children: [
          Row(
            children: [
              recentlyBox(images: GroceryImages.corn),
              recentlyBox(images: GroceryImages.dog),
            ],
          )
        ],
      )
    );
  }
}