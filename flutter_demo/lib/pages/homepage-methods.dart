import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Column offerProduct({
  required String text,
  required String price,
  required images,

}) {
    return Column(
     
      children: [
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(offset: Offset(1, 1),blurRadius: 6)],
            borderRadius: BorderRadius.circular(5),
            
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                width: 100,
                height: 80,

               decoration: BoxDecoration(
                 color: const Color.fromARGB(255, 0, 0, 0),
                 borderRadius: BorderRadius.circular(3),
                 
               ),
                child: Image.network(
                  images,
                 
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: const Color.fromARGB(255, 201, 205, 255),
                  child: Column(children: [Text(text,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),), Text(price,style: TextStyle(fontWeight: FontWeight.bold),)]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column offerColumn({required String images, required String text}) {
  return Column(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(images),
      ),
      const SizedBox(height: 6),
      Text(text),
    ],
  );
}


  Container topContainer({
    required images,
    required String text,
    required color,
    required Containercolor,
    required double height,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Containercolor,
      ),
      
      margin: EdgeInsets.all(10),

      width: 180,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(images,width: 80,height: height,),
          Gap(10),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }

  Container recentlyBox({required images}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      width: 120,
      height: 160,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        child: Image.network(images)),
    );
  }
  Widget recetlyBox({required String images}) {
  return Container(
    width: 120,
    margin:  EdgeInsets.only(right: 10),
    child: Column(
      children: [
        Container(
          height: 10,
          padding:  EdgeInsets.all(8),
          child: Image.network(
            images,
            
          ),
        ),
      ],
    ),
  );
}





   Container thickLine() {
    return Container(
      height: 10,
      width: double.infinity,
      color: Colors.grey[300],
    );
  }

  Padding paymentOption({
    IconData? icon,
    required String title,
    String? subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.blue),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle,
                      style: TextStyle(color: Colors.grey[600], fontSize: 13),
                    ),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
  Container ads({required String images}) {
  return Container(
    height: 500,
    width: 500,
    margin: EdgeInsets.all(2),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      image: DecorationImage(
        image: NetworkImage(images), 
        fit: BoxFit.fill,
      ),
    ),
  );
}

  Container Containertop({required icon, required String text}) {
    return Container(
      height: 40,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: Colors.grey),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,color: Colors.blue,),
          Gap(10),
          Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }




  Column container() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Account Settings',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        optionLists(icon: Icons.add, text: 'Flipkart Plus'),
        optionLists(icon: Icons.person, text: 'Edit rofile'),
        optionLists(icon: Icons.language, text: 'Select Language'), 
        optionLists(icon: Icons.notification_add, text: 'Notification'),
      ],
    );
  }

  ListTile optionLists({required icon, required text}) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(text, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
      trailing: Icon(Icons.arrow_forward_ios,size: 16,),
      onTap: () {},
    );
  }

