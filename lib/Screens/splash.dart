import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:myapp/Screens/phone.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => PhoneNumberScreen()),
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
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      fontSize: 35,
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
