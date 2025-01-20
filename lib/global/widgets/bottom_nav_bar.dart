import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomBottomNavigatonBar {
  static dynamic getBottomNavbar(BuildContext context,
      {int currentPageIndex = 0, required Function(int)? onTap}) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.deepPurple, Colors.blue]),
          border: Border(
              top: BorderSide(color: Colors.white, width: 2),
              bottom: BorderSide(color: Colors.white, width: 2),
              left: BorderSide(color: Colors.white, width: 2),
              right: BorderSide(color: Colors.white, width: 2)),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: BottomNavigationBar(
          // fixedColor: Colors.white,
          currentIndex: currentPageIndex,
          onTap: onTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: const IconThemeData(color: Colors.amber),
          selectedItemColor: Colors.amber,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(CupertinoIcons.person_3_fill),
                label: "Customers"),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.money),
                label: "Transactions"),
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.person),
                label: "Profile"),
          ]),
    );
  }
}
