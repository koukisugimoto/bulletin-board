import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'search_page.dart';
import 'message_page.dart';
import 'my_profile_page.dart';
import 'timelinePage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  _home createState() => _home();
}

class _home extends State<home> {

  int _selectedIndex = 0;

  final _pages = <Widget>[
    timeline(),
    serchPage(),
    messagePage(),
    myProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            label: 'message',
            icon: Icon(Icons.message_outlined),
            activeIcon: Icon(Icons.message),
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            label: 'myPage',
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}