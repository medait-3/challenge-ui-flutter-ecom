import 'package:flutter/material.dart';
import '../../data/data.dart';
import '../../detais-screen.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 1,
                  mainAxisExtent: 240,
                ),
        itemCount: productList.length,
        itemBuilder: (context, index) {
          final product = productList[index];
          return Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetaisScreen(product: product),
                ),
              );
            },
              child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      
                      Card(child: Padding(
                        padding: const EdgeInsets.only(top: 10,right: 15,left: 15,bottom: 50),
                        child: 
               RotationTransition(  turns: new AlwaysStoppedAnimation(-21 / 360),child: Image.asset(product.image,  height: 135 ,fit: BoxFit.contain)),
                      ),
                      surfaceTintColor: Colors.transparent,color:Color.fromARGB(255, 245, 244, 244) ,),
                 Positioned(left: 130,top: 8,
                   child: CircleAvatar(backgroundColor: Colors.white,radius: 16,
                     child: IconButton(
                               icon: const Icon(Icons.favorite_border),
                               iconSize: 16,
                               onPressed: () {},
                             ),
                   ),
                 ),
                 Positioned(left: 55,bottom: 30,
                   child: 
               RotationTransition(  turns: new AlwaysStoppedAnimation(-21 / 360),child: Text(product.name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),)),
              
                 ),Positioned(left:11,top: 5,
                   child:  Text('\$${product.prix}',style: TextStyle(color: Colors.lightGreenAccent.shade700,fontWeight: FontWeight.bold,fontSize: 21),),
              
                 ),
                 
                    ],
                  ),
               ],
              ),
            ),
          );
                },
        ),
  );
  }
}