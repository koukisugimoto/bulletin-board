import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class home extends StatefulWidget {
  const home({super.key});


  @override
  _homePage createState() => _homePage();
}

class _homePage extends State<home> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black12,
                tabs: [Tab(text: '新着'), Tab(text: 'おすすめ'), Tab(text: 'フォロー')],
              ),
              Expanded(
                  child: TabBarView(
                      children: [
                        Center(child: Text('New Posts' + '$_selectedIndex'),),
                        Center(child: Text('recommendation' + '$_selectedIndex'),),
                        Center(child: Text('Follow Post' + '$_selectedIndex'),)
                      ]
                  )
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem> [
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