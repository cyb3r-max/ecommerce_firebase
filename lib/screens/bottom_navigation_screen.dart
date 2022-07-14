import 'package:ecommerce_using_firebase/screens/cart_page.dart';
import 'package:ecommerce_using_firebase/screens/feed_page.dart';
import 'package:ecommerce_using_firebase/screens/home_page.dart';
import 'package:ecommerce_using_firebase/screens/search_page.dart';
import 'package:ecommerce_using_firebase/screens/user_profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);
  static const routeName = '/Bottom-nav-screen';

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _currentIndex = 0;
  List pages = [
    HomeScreen(),
    FeedScreen(),
    SearchScreen(),
    CartSceen(),
    UserProfileScreen(),
  ];
  onItemTapped(int index) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigoAccent,
        unselectedItemColor: Colors.black45,
        selectedItemColor: Colors.blue,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Home', tooltip: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.rss_feed_rounded),
              label: 'Feed',
              tooltip: "Feed"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Search', tooltip: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart', tooltip: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile', tooltip: "Profile"),
        ],
      ),
    );
  }
}
