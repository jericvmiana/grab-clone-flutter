import 'package:flutter/material.dart';
import 'package:grab_clone_flutter/screens/account.dart';
import 'package:grab_clone_flutter/screens/activity.dart';
import 'package:grab_clone_flutter/screens/home.dart';
import 'package:grab_clone_flutter/screens/messages.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  final screens = [
    const Home(),
    const Activity(),
    const Messages(),
    const Account(),
  ];

  void selectDestination(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity), label: "Activity"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: selectDestination,
      ),
      body: SafeArea(
        child: screens[selectedIndex],
      ),
    );
  }
}
