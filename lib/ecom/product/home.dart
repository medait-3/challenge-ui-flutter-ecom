import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uiecom/ecom/product/widget/bannerScrolling/bannerscrolling.dart';
import 'package:uiecom/ecom/product/widget/navcategory.dart';

import '../data/data.dart';
import '../detais-screen.dart';
import 'widget/listcard.dart';
import 'widget/searchbaner.dart';

class homeecom extends StatefulWidget {
  const homeecom({super.key});

  @override
  State<homeecom> createState() => _homeecomState();
}

class _homeecomState extends State<homeecom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(backgroundColor: Colors.transparent,

           actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_basket_rounded),
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
                             onPressed: () {},
                           ),
                ),               

        ),
        body: Column(children: [
        SizedBox(height: 10,),
        bansearch(),
        SizedBox(height: 20,),
        Scrolbann(),
        navcategory(),
        CustomCard(),
 ]),
    );
  }
}