import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../../theme/theme-provider.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
            onPressed: () {
              context.read<ThemeStateProvider>().setDarkTheme();
            },
            icon:
                context.select((ThemeStateProvider theme) => theme.isDarkTheme)
                    ? const Icon(Icons.dark_mode_outlined)
                    : const Icon(Icons.light_mode_outlined),
          ),
          ],
          // backgroundColor: CustomColors.primaryColor,
          title: const Text(
            'Profile',
            style: TextStyle(
              // color: CustomColors.secondaryColor,
              fontSize: 26,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(140),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 120,
                  child: Icon(Icons.person  ,size: 122,),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
            ],
          ),
        ),
      
    );
  }
}