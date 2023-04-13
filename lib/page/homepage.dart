import 'package:e_commerce_jihad/page/about.dart';
import 'package:e_commerce_jihad/page/market.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _navbarSelect = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _navbarSelect = index;
    });
  }

  List page = [
    MarketPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_navbarSelect],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Market",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: "Account",
          )
        ],
        currentIndex: _navbarSelect,
        onTap: _changeSelectedNavBar,
        selectedItemColor: Colors.pink[200],
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
