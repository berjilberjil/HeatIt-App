import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/Screens/bottomnavbar.dart';
import 'package:myapp/Screens/phone.dart';
import 'productdetail.dart';
import 'myprofile.dart';
import 'wallet.dart';
import 'bottomnavbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(), // Replace with your actual home content widget
    WalletScreen(),
    MyProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyProfileScreen()),
      );
    }
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WalletScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.location_pin),
            Text(
              "Chennai, Dolakpoor",
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: Colors.black,
                ),
              ),
              child: InkWell(
                child: CircleAvatar(
                  radius: 15,
                  child: SvgPicture.asset(
                    "assets/images/profile.svg",
                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyProfileScreen()));
                },
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 150,
                width: 250,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage("assets/images/google-icon.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Bordon Jhorn",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Color.fromARGB(162, 0, 87, 98),
                        ),
                        Text(
                          "My Profile",
                          style: TextStyle(
                            color: Color.fromARGB(162, 0, 87, 98),
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: const Text("Home"),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text("My Orders"),
                    leading: const Icon(Icons.shopping_cart),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text("My Profile"),
                    leading: const Icon(Icons.person),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text("Settings"),
                    leading: const Icon(Icons.settings),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text("Logout"),
                    leading: const Icon(Icons.logout),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PhoneNumberScreen(),
                        ),
                      );
                      // Handle logout
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Borden Jhorn",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Clicked");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Search for Lunch",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),
          //need to change stuffs
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Categories",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/breakfast.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 20,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Breakfast",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/lunch.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 20,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Lunch",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/dinner.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 20,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Dinner",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/other.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 20,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Other",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Popular",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 240,
                    width: 190,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/prawn.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("4.1"),
                              Text(
                                "Prawn",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("Avilable in 13 Restaurants")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 240,
                      width: 190,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/prawn.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 70,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("4.1"),
                                Text(
                                  "Prawn",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Avilable in 13 Restaurants")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      children: [
                        Container(
                          height: 240,
                          width: 190,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/prawn.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 70,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("4.1"),
                                    Text(
                                      "Prawn",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text("Avilable in 13 Restaurants")
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetailPage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 240,
                              width: 190,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/prawn.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 70,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("4.1"),
                                        Text(
                                          "Prawn",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text("Avilable in 103 Restaurants")
                                      ],
                                    ),
                                  ),
                                ),
                              ),
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
        ],
      ),
      bottomNavigationBar: const Bottomnavbar(
        index: 0,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.shifting,
      //       items: const <BottomNavigationBarItem>[
      //         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",
      //          ),
      //         BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
      //         BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      //       ],
      //       currentIndex: _selectedIndex,
      //       selectedItemColor: Colors.red,
      //       unselectedItemColor: Colors.green,
      //       onTap: _onItemTapped,
      //     ),
    );
  }
}
