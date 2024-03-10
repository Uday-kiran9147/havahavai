import 'package:flutter/material.dart';

import '../pages/airport.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Havahavai',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'UberMove',
        scaffoldBackgroundColor: Colors.white,
        cardColor: Colors.white,
        popupMenuTheme: const PopupMenuThemeData(
          color: Colors.white,surfaceTintColor: Colors.white
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const AirPortPage(title: 'Flutter Demo Home Page'),
    );
  }
}
