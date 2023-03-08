import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        iconSize: 30,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        elevation: 0,
        backgroundColor: Colors.transparent,
        items: const [
          BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.home),
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.favorite_border)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.account_circle)),
          BottomNavigationBarItem(label: "", icon: Icon(Icons.history)),
        ]);
  }
}
