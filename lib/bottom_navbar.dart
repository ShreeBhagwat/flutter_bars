import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bars/screens/screen1.dart';
import 'package:flutter_bars/screens/screen2.dart';
import 'package:flutter_bars/screens/screen3.dart';
import 'package:flutter_bars/screens/screen5.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = [
    Screen1(screenName: 'Home'),
    Screen2(screenName: 'Feed'),
    Screen3(screenName: 'Settings'),
    Screen5(screenName: 'Navigation Drawer')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chats',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Drawer',
              backgroundColor: Colors.purple),
        ],
      ),
    );
  }
}
