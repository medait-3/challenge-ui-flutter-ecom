import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bansearch extends StatefulWidget {
  
  const bansearch({super.key});

  @override
  State<bansearch> createState() => _bansearchState();
}

class _bansearchState extends State<bansearch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20),
      child: Row(
        children: [
          Container(
            width: 255,
            height: 40,
            decoration: BoxDecoration(color:  Color.fromARGB(255, 247, 247, 247), borderRadius: BorderRadius.circular(11)),
            child: TextFormField(cursorColor: Colors.black,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search,color: Colors.grey,),
                          hintText: "Search products...",
                                    border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          contentPadding: EdgeInsets.zero,
          

                        ),
            ),
          ),
          SizedBox(width: 3,),
      ClipRRect(    borderRadius: BorderRadius.circular(11),
            child: Container(
            height: 40,color: Colors.lightGreenAccent.shade700,
                    child:IconButton(
                    icon: const Icon(Icons.search),
                    iconSize: 25,color: Colors.white,
                    onPressed: () {},
                  ) ,),
          ),
        ],
      ),
    );
  }
}