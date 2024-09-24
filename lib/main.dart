import 'package:flutter/material.dart';
import 'Screens/splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HeatIt Dev',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: Color(0xFFFFF5F8),
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
