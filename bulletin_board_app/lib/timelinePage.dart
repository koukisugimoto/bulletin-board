import 'package:flutter/material.dart';
import 'new_post.dart';
import 'recommendation.dart';
import 'follow_users_posts.dart';

class timeline extends StatelessWidget {

  final _pages = <Widget> [
    newPostPage(),
    recommendationPage(),
    followUsersPosts(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black12,
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
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}