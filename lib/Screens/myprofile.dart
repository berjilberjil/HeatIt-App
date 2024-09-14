import 'package:flutter/material.dart';
import 'bottomnavbar.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
              ),
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(25.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Name',
                          hintText: 'Enter your name',
                          suffixIcon: Icon(Icons.clear)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "CHANGE",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Mobile',
                          hintText: 'Enter your Phone No',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                      child: TextField(
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              "CHANGE",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Email',
                          hintText: 'Enter your Mail',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
