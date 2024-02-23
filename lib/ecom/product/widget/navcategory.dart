import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
    return  Container(child: SingleChildScrollView(scrollDirection: Axis.horizontal,child: Row(children: [
                ...List.generate(
            productList.length,
            (index) {
              return CategoriesCard(
                      isSelected: selectedIndex == index,
                      categoriesModel:  productList[index],
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
            }
                )
    ],),));
  }
}
class CategoriesCard extends StatefulWidget {
  final bool isSelected;
  final Product categoriesModel;
  final VoidCallback onTap;

  const CategoriesCard({
    super.key,
    required this.categoriesModel,
    required this.onTap,
    required this.isSelected,
  });

  @override
  State<CategoriesCard> createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          margin: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 8,
                      ),
          child: CircleAvatar(
                        radius: 29,
                        backgroundColor:  widget.isSelected
                ? Colors.lightGreenAccent.shade700
                : Color.fromARGB(255, 247, 246, 246),
            
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                                widget.categoriesModel.category,
                                
                              ),
                        ),
                      ),
        ),
      ),
    );
  }
}
