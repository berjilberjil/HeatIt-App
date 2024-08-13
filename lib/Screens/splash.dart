import 'package:flutter/material.dart';
import 'package:myapp/Screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "HeatIt",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontSize: 25,
                      color: Colors.white,
                    ),
              ),
            ),
            Text(
              "Your personal heating assistant",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: 15,
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
