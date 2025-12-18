import 'package:flipkart_main_project/pages/images.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 225, 238),
      appBar: AppBar(
        title: Text('All Categories', style: TextStyle(color: const Color.fromARGB(255, 42, 42, 42))),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 30, color: const Color.fromARGB(255, 21, 21, 21)),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 177, 207, 255),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
           Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
  circleConainter(images: Images.topoffer, text: 'Top Offer'),
  circleConainter(images: Images.grocery, text: 'Grocery'),
  circleConainter(images: Images.mobile, text: 'Mobile'),
  circleConainter(images: Images.fashion, text: 'Fashion'),
],

            ),
                Gap(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                circleConainter(images: Images.home,text: 'Home'),
                circleConainter(images: Images.PersonalCare,text: 'Personal Care',),
                circleConainter(images: Images.Appliances,text: 'Appliances',),
                circleConainter(images: Images.insurance,text: 'Insurance',),
              ],
            ),
                 Gap(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                circleConainter(images: Images.Perfume,text: 'Perfume'),
                circleConainter(images:  Images.carandbikes,text: 'Car & Bike',),
                circleConainter(images:  Images.Cake,text: ' Cake',),
                circleConainter(images:  Images.Furniture,text: 'Furniture',),
              ],
            ),

             Gap(50),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                circleConainter(images: Images.toys,text: 'Toys'),
                circleConainter(images: Images.Sports,text: 'Sports',),
                    circleConainter(images: Images.travel,text: 'Travel'),
                circleConainter(images: Images.giftandcards,text: 'Gift cards',),
              ],
            ),
              Gap(50),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                circleConainter(images: Images.foodandhelath,text: 'Food'),
                circleConainter(images: Images.Beauty,text: 'Beauty ',),
                circleConainter(images: Images.shoes,text: 'shoes',),
                circleConainter(images: Images.Accesssories,text: 'Accesssories',),
              ],
            ),
            
          ],
        ),
      ),
    );
  }


 Column circleConainter({required String images, required String text}) {
  return Column(
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(images), 
        radius: 30,
      ),
      SizedBox(height: 15),
      Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  );
}
}