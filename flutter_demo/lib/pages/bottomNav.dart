import 'package:flipkart_main_project/pages/account.dart';
import 'package:flipkart_main_project/pages/categories.dart';
import 'package:flipkart_main_project/pages/homepage.dart';
import 'package:flipkart_main_project/pages/myCart.dart';
import 'package:flutter/material.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int indexNum = 0;
   List tabWidget=[
    Homepage(),
    Categories(),
    MyAccount(),
    MyCart()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: tabWidget.elementAt(indexNum),

  bottomNavigationBar: Container(
    decoration:  BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 242, 179, 184), 
          Color.fromARGB(255, 255, 223, 179), 
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: BottomNavigationBar(
      backgroundColor: Colors.transparent, 
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      currentIndex: indexNum,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black87,
      onTap: (value) {
        setState(() {
          indexNum = value;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_rounded),
          label: "Categories",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box_outlined),
          label: "Account",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "Cart",
        ),
      ],
    ),
  ),
);

  }
}