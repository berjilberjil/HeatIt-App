import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/bg1.jpg",
              width: 411,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "The Best Food Partner For You",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Container(
                  height: 2,
                  width: 400,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                const Positioned(
                  left: 10,
                  child: Text(
                    "Login or SignUp",
                    style: TextStyle(
                      color: Color.fromARGB(255, 161, 38, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(),
                  hintText: 'Enter phone number',
                ),
                initialCountryCode: 'IN',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                
                backgroundColor:
                    Colors.red, // Change this to your desired color
              ),
              child: const Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
