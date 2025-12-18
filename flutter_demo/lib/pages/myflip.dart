import 'package:flipkart_main_project/pages/images.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Myflip extends StatefulWidget {
  const Myflip({super.key});

  @override
  State<Myflip> createState() => _MyflipState();
}

class _MyflipState extends State<Myflip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
    
      bottomNavigationBar: BottomAppBar(
        
        color: const Color.fromARGB(255, 255, 209, 209),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('₹40,000',style: TextStyle(decoration: TextDecoration.lineThrough,),),
                  Text('₹32,450',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)
                ],
                
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  backgroundColor: Colors.amber
                ),
                onPressed: (){}, child: Text('Place Order'))
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Column(
                                children: [
                                  Text(
                                    "Deliver to: Rifana sherin, 679308",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Mechery thodi(H),Edappalam po,Edappalam....",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        TextButton(onPressed: () {}, child: Text("Change")),
                      ],
                    ),
                    const SizedBox(height: 10),
          
                    orderDeta(images: CartImages.men,text: 'SLIM FIT POLO SHIRT'),
                  ],
                ),
              ),
              qtyButton(qty:'Qty : 5'),
              Gap(20),
              rowButtons(
                icons1: Icons.save_alt_rounded,
                text1: 'Save for later',
                icons2: Icons.delete_outline_outlined,
                text2: 'Remove',
              ),
              Divider(thickness: 5),
              Gap(20),
              Padding(padding:  EdgeInsets.all(8.0), child: orderDeta(images: CartImages.girl,text: 'BOMBER JACKET')),
          
              qtyButton( qty:'Qty : 3'),
              Gap(10),
              rowButtons(
                icons1: Icons.save_alt_outlined,
                text1: 'Save for later',
                icons2: Icons.delete_outline_outlined,
                text2: 'Remove',
              ),
              Divider(thickness: 10),
                  Gap(20),
              Padding(padding:  EdgeInsets.all(8.0), child: orderDeta(images: CartImages.watch,text: '  BVLGARI WOMEN WATCH')),
          
              qtyButton(qty: 'Qty : 3'),
               Gap(10),
              rowButtons(
                icons1: Icons.save_alt_outlined,
                text1: 'Save for later',
                icons2: Icons.delete_outline_outlined,
                text2: 'Remove',
              ),
              
            ],
            
          ),
        ),
        
      ),
    );
  }

  Align qtyButton({
    required String qty,
  }
  ) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: 75,
        height: 25,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(qty, style: TextStyle(fontWeight: FontWeight.bold)),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }

  Row orderDeta({
    required images,
    required String text,
  
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          images, 
          width: 100,
          height: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                text,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Gap(5),
              const Text("Size: S"),
              Gap(5),
              Row(
                children: const [
                  Icon(Icons.star, color: Colors.green, size: 16),
                  Icon(Icons.star, color: Colors.green, size: 16),
                  Icon(Icons.star, color: Colors.green, size: 16),
                  Icon(Icons.star, color: Colors.green, size: 16),
                  Icon(Icons.star_half, color: Colors.green, size: 16),
                  SizedBox(width: 5),
                  Text("(5)"),
                ],
              ),
              Gap(5),
              Row(
                children:  [
                  Text("41% off ", style: TextStyle(color: Color.fromARGB(255, 180, 40, 72))),

                  Text(
                    "₹5,000",
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),

                  Text("₹2,950", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Gap(10),
               Text(
                "5 offers applied · 2 offers available",
                style: TextStyle(color: Color.fromARGB(255, 190, 52, 91)),
              ),
              
            ],
          ),
        ),
      ],
    );
  }

  Row rowButtons({
    required icons1,
    required icons2,
    required String text1,
    required String text2,
  }) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(width: 0, color: const Color.fromARGB(255, 206, 86, 86)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(icons1), Text(text1)],
            ),
          ),
        ),
        VerticalDivider(width: 1, color: Colors.blue),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 0, color: Colors.grey),
            ),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(icons2), Gap(10), Text(text2)],
            ),
          ),
        ),
      ],
    );
  }
}
