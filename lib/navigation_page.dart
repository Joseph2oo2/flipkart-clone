import 'package:flutter/material.dart';

import 'account_page.dart';
import 'cart_page.dart';
import 'categories_page.dart';
import 'home_page.dart';
import 'notification_page.dart';

class Navigation_Page extends StatefulWidget {
  const Navigation_Page({super.key});

  @override
  State<Navigation_Page> createState() => _Navigation_PageState();
}

class _Navigation_PageState extends State<Navigation_Page> {
  @override
  int _selectedIndex = 0;

    final List<Widget> _screens = [
      HomePage(),
      CategoriesPage(),
      NotificationPage(),
      Accountpage(),
      CartPage(),
    ];
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type : BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      body: _screens[_selectedIndex],
    );

  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
