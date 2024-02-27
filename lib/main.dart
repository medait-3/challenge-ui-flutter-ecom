import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uiecom/ecom/product/widget/barBttomNav/screenbottonNav/home.dart';

import 'ecom/product/widget/barBttomNav/Mynavbar.dart';
import 'theme/theme-config.dart';
import 'theme/theme-provider.dart';




void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => ThemeStateProvider(),
        child: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

    @override
  void didChangeDependencies() {
    context.read<ThemeStateProvider>().getDarkTheme();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeStateProvider>(
    builder: (context, theme, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Product List',
         theme: ThemeConfig.lightTheme,
          darkTheme: ThemeConfig.darkTheme,
          themeMode: theme.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
        home: customvavbar(),
      );}
    );
  }
}
