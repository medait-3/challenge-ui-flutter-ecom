

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../data/data.dart';

class Scrolbann extends StatefulWidget {
  const Scrolbann({super.key});

  @override
  State<Scrolbann> createState() => _ScrolbannState();
}

class _ScrolbannState extends State<Scrolbann> {

    int myCurrentIndex = 0;

final myitems = [
  Custombann(image: 'assets/nike/nike1.png',haight: 50,onTap: () => print("hello"),),
  Custombann(image: 'assets/adidas/adidas1.png',haight: 80,onTap: () => print("hello"),),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        CarouselSlider(
                options: CarouselOptions(
                  
                  autoPlay: true,
                  height: 130,
                  autoPlayCurve: Curves.easeInOutBack,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  },
                ),
                items: myitems,
              ),SizedBox(height: 12,),
              AnimatedSmoothIndicator(activeIndex: myCurrentIndex,
              count: myitems.length,
              effect: ExpandingDotsEffect(
                dotHeight: 7,
                dotWidth:7,
                spacing: 5,
                dotColor: Colors.grey.shade200,
                activeDotColor:  Theme.of(context).colorScheme.onPrimaryContainer,
                paintStyle: PaintingStyle.fill
              ),)
            
    ],);
  }
}

class Custombann extends StatefulWidget {
  final String image;
  final double? haight;
  final VoidCallback onTap;
  const Custombann({super.key, required this.image,  this.haight, required this.onTap});

  @override
  State<Custombann> createState() => _CustombannState();
}

class _CustombannState extends State<Custombann> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal:10,),
      child: ClipRRect(    borderRadius: BorderRadius.circular(20),
        child: Container(color: Colors.black,child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
               RotationTransition(  turns: new AlwaysStoppedAnimation(-21 / 360),
child: Image.asset(widget.image,height: widget.haight,)),

              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Year-End sale",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 16),),
                  Text("Up To 90%",style: TextStyle(color: Colors.grey,fontWeight:FontWeight.bold,fontSize: 14),),
                  SizedBox(height: 10,),
  
 InkWell(
  onTap:widget.onTap,
  child: new Container(
      width: 80.0,
      height: 25.0,
      decoration: new BoxDecoration(
        color:  Theme.of(context).colorScheme.onPrimaryContainer,
        borderRadius: new BorderRadius.circular(50.0),
      ),
      child: new Center(child: new Text('Shop Now', style: new TextStyle(fontSize: 12.0, color: Colors.black),),),
  ),
),
                ],
              ),
            ],
          ),
        ),)),
    ) ;
  }
}