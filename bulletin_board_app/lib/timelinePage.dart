import 'package:flutter/material.dart';

class timeline extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black12,
                tabs: [Tab(text: '新着'), Tab(text: 'おすすめ'), Tab(text: 'フォロー')],
              ),
              Expanded(
                  child: TabBarView(
                      children: [
                        Center(child: Text('New Posts',)),
                        Center(child: Text('recommendation')),
                        Center(child: Text('Follow Post')),
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