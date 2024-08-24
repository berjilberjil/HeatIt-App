import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 17, 0),
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
