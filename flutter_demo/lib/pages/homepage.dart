import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipkart_main_project/pages/images.dart';
import 'package:flipkart_main_project/pages/myGrocery.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import './homepage-methods.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 244, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: topContainer(
                        images: 'https://media.assettype.com/thebridgechronicle/import/s3fs-public/news-story/cover-images/4Buz_Flipkart_Pay_Later_now_.jpg?w=1200&h=675&auto=format%2Ccompress&fit=max&enlarge=true',
                        text: 'Flipkart',
                        Containercolor:  Color.fromARGB(255, 24, 129, 216),
                        color: const Color.fromARGB(255, 9, 8, 8),
                        height: 20
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyGro()));
                          },
                          child: topContainer(
                            images: 'https://images.yourstory.com/cs/wordpress/2018/05/flipkart_walmart.png?mode=crop&crop=faces&ar=2%3A1&format=auto&w=1920&q=75',
                            text: 'Grocery',
                            color: const Color.fromARGB(255, 3, 3, 3),
                            Containercolor:  Color.fromARGB(255, 185, 224, 252),
                            height: 80,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Brand Mall',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search for products...',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                items: [
                  ads(images: CarouselImage.carouselimg1),
                  ads(images: CarouselImage.carouselimg2),
                  ads(images:CarouselImage.carouselimg3),
                ],
                options: CarouselOptions(
                  aspectRatio: 16 / 7,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                   
                    children: [
                      offerColumn(
                        images: CircleImages.superCoin,
                        text: 'super coin',
                      ),
                      Gap(20),
                      offerColumn(
                        images: CircleImages.reward,
                        text: 'Rewards',
                      ),
                      Gap(20),
                      offerColumn(
                        images: CircleImages.nextgen,
                        text: 'NextGen',
                      ),
                      Gap(20),
                      offerColumn(
                        images: CircleImages.gitfCard,
                        text: 'Gitfcard',
                      ),
                      Gap(20),
                      offerColumn(
                        images: CircleImages.grocery1,
                        text: 'Grocery',
                      ),
                    ],
                  ),
                ),
              ),
              Gap(10),
              SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    offerProduct(
                      images:OfferImages.laptop,
                      price: "From ₹79,999",
                      text: 'Laptop Deals',
                    ),
                    offerProduct(
                      images:OfferImages.watches,
                      price: 'Sale is live',
                      text: 'Extra ₹65 Off',
                    ),
                    offerProduct(
                      images:OfferImages.Earphone,
                      price: 'SalePrice₹14,999',
                      text: 'BT Calling|1.83',
                    ),
                  ],
                ),
              ),
              Gap(30),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                        children: [
                          Text(
                            'Recently Viewed Stroes',
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          recentlyBox(
                            images:
                                'https://img.kwcdn.com/product/fancy/a6336d59-a165-4c44-b851-f274797fad04.jpg?imageMogr2/auto-orient%7CimageView2/2/w/800/q/70/format/webp',
                                
                          ),
                          recentlyBox(
                            images:
                                'https://thalasiknitfab.com/cdn/shop/files/OVERSIZEBLUETSHIRT_2_Non-Watermarked_1200x1200.jpg?v=1696591664',
                          ),
                              recentlyBox(
                            images:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDZt-cJ_0d29DHqi_ciI6bcSKIYP1Rf62HnQ&s',
                          ),
                              recentlyBox(
                          images:
                              'https://img105.savana.com/goods-pic/51c33fde61b246b1a5e0299d5490514a_w540_h720_q85.webp',
                        ),
                        recetlyBox(
                          images: 'https://images.meesho.com/images/products/595161043/qafxf_1080.webp',
                          
                          ),
                        ],
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