import 'dart:ui';
import './homepage-methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}
class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hey! RIFANA ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 255, 233, 105)),
                        borderRadius: BorderRadius.circular(50),
                      ),

                      child: Row(
                        children: [
                          Image.network(
                            'https://cdn.shopify.com/s/files/1/0044/7650/2085/files/02_f33418e3-89d3-4fce-8299-d79f55d0aeab.webp?v=1755858059',
                            height: 45,
                            width: 45,
                          ),
                          Text(
                            '999',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Gap(9),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network('https://media.assettype.com/thequint%2F2018-08%2F05043882-7588-48ca-aaf8-13786bdcfb23%2F3e8a80bd_a21b_4f6e_aec3_b49fb417e1f5.jpg?rect=0%2C0%2C933%2C525&auto=format%2Ccompress&fmt=webp&width=720', width: 300,height: 100,),
                  ),
                ),
              ),
              Divider(),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                         
                        },
                        child: Containertop(
                          icon: Icons.shopping_cart_outlined,
                          text: 'Orders',
                        ),
                      ),
                    ),

                    Expanded(
                      child: Containertop(
                        icon: Icons.favorite_border_outlined,
                        text: 'Wishlist',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Containertop(
                        icon: Icons.card_giftcard,
                        text: 'Coupons',
                      ),
                    ),
                    Expanded(
                      child: Containertop(
                        icon: Icons.headphones_outlined,
                        text: 'Help Center',
                      ),
                    ),
                  ],
                ),
              ),
              Gap(30),
              thickLine(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Credit Options',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  paymentOption(
                    icon: Icons.calendar_today_outlined,
                    title: 'Flipkart Pay Later',
                    subtitle: 'Complete application & get ₹500* gift card',
                  ),
                  paymentOption(
                    icon: Icons.credit_card,
                    title: 'Flipkart Axis Bank Credit Card',
                  ),
                  Gap(10),
                  thickLine(),
                  Gap(15),
                  Image.network('https://www.karobargain.com/wp-content/uploads/2022/12/flipkart-plus.jpg'),
                  Gap(10),
                  Padding(
                    padding: const EdgeInsets.only(right: 49),
                    child: Divider(
                      color: const Color.fromARGB(255, 71, 200, 75),
                      thickness: 4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Level Up and win rewards worth Rs.1000000',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Only 1 more tasks to complete this level',
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 95, 51, 51),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              thickLine(),
              container(),
              Gap(20),
              thickLine(),
                Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'My Acitivity',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  optionLists(icon: Icons.reviews_outlined, text: 'Reviews'),
                  optionLists(icon: Icons.question_answer_rounded, text: 'Questions & Answers'),
                ],
              ),
             
                 thickLine(),
                 Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Feedback & Information',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  optionLists(icon: Icons.policy_outlined, text: 'Terms,Policies and Licencses'),
                  optionLists(icon: Icons.browser_updated_outlined, text: 'Browse FAQs'),
                ],
              ),
                 Gap(20),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 80,
                color: const Color.fromARGB(255, 224, 183, 183),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(320, 40),
                        side: BorderSide(width: 0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 12, 63, 88),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}