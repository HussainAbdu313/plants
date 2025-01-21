import 'package:flutter/material.dart';
import 'package:plants/View/Account_screen/account_screen.dart';
import 'package:plants/View/Home_screen/home_screen.dart';
import 'package:plants/View/Order_list_screen/order_list_screen.dart';
import 'package:plants/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> pages = [
    HomeScreen(),
    OrderListScreen(),
    AccountScreen(),
  ];
  int _currentPage = 0;
  List<Widget>body = [
    Icon(Icons.home),
    Icon(Icons.library_books_outlined),
    Icon(Icons.person),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green.shade300,
        elevation: 0,
        onTap: (value) {
          setState(() {
            _currentPage = value;
          });
        },
        currentIndex: _currentPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Booking",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
        selectedItemColor: Constants.primaryColor,
        unselectedItemColor: Colors.black87,
        iconSize: 26.0,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),

      ),
    );
  }
}
