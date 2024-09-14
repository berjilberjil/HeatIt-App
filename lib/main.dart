import 'package:flutter/material.dart';
import 'Screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
