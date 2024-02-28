import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uiecom/ecom/product/widget/barBttomNav/screenbottonNav/favorite.dart';
import 'package:uiecom/ecom/product/widget/barBttomNav/screenbottonNav/home.dart';

import 'screenbottonNav/profile.dart';

class customvavbar extends StatefulWidget {
  const customvavbar({super.key});

  @override
  State<customvavbar> createState() => _customvavbarState();
}
int _currentIndex = 0;


class _customvavbarState extends State<customvavbar> {
   void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final pages = [const homeecom(), Container(color: Colors.red,), favoriteScreen(),MyProfilePage() ];
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: DotNavigationBar(backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: changePage,
        dotIndicatorColor: Colors.transparent,
        items: [
          DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor:  Theme.of(context).colorScheme.onPrimary,
              unselectedColor: Colors.grey[200]),

          
          DotNavigationBarItem(
              icon: const Icon(Icons.shopping_basket),
              selectedColor:  Theme.of(context).colorScheme.onPrimary,
              unselectedColor: Colors.grey[200]),

          
          DotNavigationBarItem(
              icon: const Icon(Icons.favorite),
              selectedColor:  Theme.of(context).colorScheme.onPrimary,
              unselectedColor: Colors.grey[200]),
          DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor:  Theme.of(context).colorScheme.onPrimary,
              unselectedColor: Colors.grey[200]),

        ],
      ),
    );
  }
}