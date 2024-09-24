import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/Screens/home.dart';
import 'package:myapp/Screens/myprofile.dart';
import 'package:myapp/Screens/wallet.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int ActiveIndex = 0;
  PageController pageController = PageController();

  static const List<Widget> _widgetOPtions = <Widget>[
    HomeScreen(),
    WalletScreen(),
    MyProfileScreen()
  ];
  void _onItemTapped(int index) {
    setState(() {
      ActiveIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: _widgetOPtions,
        onPageChanged: (int index) {
          setState(() {
            ActiveIndex = index;
          });
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 228, 228, 228),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: ActiveIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.green,
          onTap: (ActiveIndex) {
            pageController.jumpToPage(ActiveIndex);
          },
        ),
      ),
    );
  }
}
