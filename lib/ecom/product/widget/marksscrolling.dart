import 'package:flutter/material.dart';
import 'package:uiecom/ecom/data/data.dart';

class navcategory extends StatefulWidget {
  const navcategory({super.key});

  @override
  State<navcategory> createState() => _navcategoryState();
}

class _navcategoryState extends State<navcategory> {
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      // width: w,
      // height: 50,
      // color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          ...List.generate(
            brandes.length,
            (index) {
              
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    child: Column(
                      children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                          child: ClipRRect(    borderRadius: BorderRadius.circular(11),
                            child: Container(height: 40,
                              color: selectedIndex == index
                                          ? Colors.brown
                                          : Color.fromARGB(255, 247, 246, 246),
                                 child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(brandes[index]["image"]),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 1),
                        Text(
                          brandes[index]["lable"],
                          style: const TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                );
              
            },
          )
        ]),
      ),
    );

  }
}
              
//               CategoriesCard(
//                       isSelected: selectedIndex == index,
//                       // categoriesModel:  productList[index],
//                       onTap: () {
//                         setState(() {
//                           selectedIndex = index;
//                         });
//                       },
//                     );
//             }
//                 )
//     ],),));
//   }
// }
//  class CategoriesCard extends StatefulWidget {
//   final bool isSelected;
//   // final Product categoriesModel;
//   final VoidCallback onTap;

//   const CategoriesCard({
//     super.key,
//     // required this.categoriesModel,
//     required this.onTap,
//     required this.isSelected,
//   });

//   @override
//   State<CategoriesCard> createState() => _CategoriesCardState();
// }

// class _CategoriesCardState extends State<CategoriesCard> {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: widget.onTap,
//       child: Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 5),
//         child: Container(
//           margin: const EdgeInsets.symmetric(
//                         horizontal: 9,
//                         vertical: 8,
//                       ),
//           child: CircleAvatar(
//                         radius: 29,
//                         backgroundColor:  widget.isSelected
//                 ? Colors.lightGreenAccent.shade700
//                 : Color.fromARGB(255, 247, 246, 246),
            
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Image.asset(
//                                 brandes[index]
                                
//                               ),
//                         ),
//                       ),
//         ),
//       ),
//     );
//   }
// }
