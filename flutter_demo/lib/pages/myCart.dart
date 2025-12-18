import 'package:flipkart_main_project/pages/myGrocery.dart';
import 'package:flipkart_main_project/pages/myflip.dart';
import 'package:flutter/material.dart';


class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text('My Cart'),backgroundColor: const Color.fromARGB(255, 255, 211, 238),),
        body: Column(
          children: [
            TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: const Color.fromARGB(255, 188, 105, 184),
                  indicatorWeight: 5,
                    labelColor: const Color.fromARGB(255, 195, 121, 197),              
                    unselectedLabelColor: Colors.black ,
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
              tabs: [

              Tab(
                text: 'Flipkart',
              ),
                    Tab(
                text: 'Grocery',
              ),
            ],),
            Expanded(
              child: TabBarView(children: [
                Myflip(),
                MyGro(),
              ]),
            ),
            
          ],
        ),
      ),
      
    );
  }
}