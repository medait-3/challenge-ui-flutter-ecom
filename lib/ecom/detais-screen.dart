import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'data/data.dart';

class DetaisScreen extends StatefulWidget {
    final Product product;

  const DetaisScreen({super.key, required this.product});

  @override
  State<DetaisScreen> createState() => _DetaisScreenState();
}

class _DetaisScreenState extends State<DetaisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:  AppBar(backgroundColor: Colors.transparent,centerTitle: true,
title: Text("Details",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
           actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_active),
            iconSize: 18,
            onPressed: () {},
          ),Padding(
          padding: const EdgeInsets.only(right: 15),
            child: IconButton(
                    icon: const Icon(Icons.more_vert_rounded),
                    iconSize: 18,
                    onPressed: () {},
                  ),
          ),
        ],
                leading: Padding(
          padding: const EdgeInsets.only(left: 15),
                  child: IconButton(
                             icon: const Icon(Icons.arrow_back),
                             iconSize: 18,
                             onPressed: () {  Navigator.of(context).pop();},
                           ),
                ),    
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [

              
      ClipRRect(    borderRadius: BorderRadius.circular(11),child: Container(child: Image.asset(
                                         widget.product.img[0],
                                      
                                      ),color: Color.fromARGB(255, 212, 209, 209),height: 340 ,width: 200,),),SizedBox(width:21,),
              Column(children: [

              
      ClipRRect(    borderRadius: BorderRadius.circular(11),child: Container(child: Image.asset(
                                         widget.product.img[1],
                                        fit: BoxFit.cover,
                                      ),color: Color.fromARGB(255, 212, 209, 209),height: 100 ,width: 111,)),
              SizedBox(height: 20,),
              
      ClipRRect(    borderRadius: BorderRadius.circular(11),child: Container(child: Image.asset(
                                         widget.product.img[2],
                                        fit: BoxFit.cover
                                      ),color: Color.fromARGB(255, 212, 209, 209),height: 100 ,width: 111,)),
              SizedBox(height: 20,),
              
      ClipRRect(    borderRadius: BorderRadius.circular(11),child: Container(child: Image.asset(
                                         widget.product.img[3],
                                        fit: BoxFit.cover,
                                      ),color: Color.fromARGB(255, 212, 209, 209),height: 100 ,width: 111,)),
              ],),
            ],),
          ),                      Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Featured on Treding Product',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.red),),
                    SizedBox(height: 10,),
                    Text(widget.product.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    SizedBox(height: 15,),
                    Text('Description',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                  SizedBox(height: 10,),
                  RichText(
  text: TextSpan(
    children: const <TextSpan>[
      TextSpan(text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.', style: TextStyle(color:Colors.black)),
      TextSpan(text: ' Read More', style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold)),
    
    ],
  ),
), SizedBox(height: 15,),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text( 'Size', style: TextStyle(color:Colors.black)),
       Row(
         children: [
                   CircleAvatar(radius: 15,
             backgroundColor: Color.fromARGB(255, 237, 236, 236),
         child: Text("L",style: TextStyle(color: Colors.black),)
            ), SizedBox(width: 5,),
                   CircleAvatar(radius: 15,
             backgroundColor: Colors.lightGreenAccent.shade700,
         child: Text("M",style: TextStyle(color: Colors.black),)
            ), SizedBox(width: 5,),
                   CircleAvatar(radius: 15,
             backgroundColor: Color.fromARGB(255, 237, 236, 236),
         child: Text("S",style: TextStyle(color: Colors.black),)
            ), SizedBox(width: 5,),
                   CircleAvatar(radius: 15,
             backgroundColor: Color.fromARGB(255, 237, 236, 236),
         child: Text("XL",style: TextStyle(color: Colors.black),)
            ), SizedBox(width: 5,),
         ],
       ),
       
    ],),
    Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text( 'Price', style: TextStyle(color:Colors.black)),
       Text( '\$${widget.product.prix}', style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
       
    ],),
  ],
),
 Padding(
   padding: const EdgeInsets.all(20),
   child: ClipRRect(    borderRadius: BorderRadius.circular(21),
    child:   Container(color:Colors.lightGreenAccent.shade700 ,width: double.infinity,height: 40,
    child: Center(child: Text("checkout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),),
),
 )
                  ],
                ),
              ),
        ],),
    );
  }
}