import 'package:flutter/material.dart';
import 'new_post.dart';
import 'recommendation.dart';
import 'follow_users_posts.dart';
import 'package:provider/provider.dart';
import 'item.dart';
import 'item_provider.dart';

class timeline extends StatelessWidget {

  final _pages = <Widget> [
    newPostPage(),
    recommendationPage(),
    followUsersPosts(),
  ];

  @override
  Widget build(BuildContext context) {
    final itemListProvider = Provider.of<ItemListProvider>(context);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 5, 71, 1),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TabBar(
                indicatorColor: Colors.white,
                labelStyle: TextStyle(fontSize: 19, color: Colors.white),
                unselectedLabelStyle: TextStyle(fontSize: 15, color: Colors.white),
                tabs: [Tab(text: '新着'), Tab(text: 'おすすめ'), Tab(text: 'フォロー')],
              ),
              Expanded(
                  child: TabBarView(
                      children: [
                        _pages[0],
                        _pages[1],
                        _pages[2],
                      ]
                  )
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(16, 5, 71, 1),
        onPressed: () {
          final newItem = Item('New Item');
          itemListProvider.addItem(newItem);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}