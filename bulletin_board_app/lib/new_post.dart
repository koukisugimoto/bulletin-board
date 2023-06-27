import 'package:bulletin_board_app/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'item_provider.dart';
import 'item.dart';

class newPostPage extends StatefulWidget {

  @override
  _newPostPage createState() => _newPostPage();
}

class _newPostPage extends State<newPostPage> {

  @override
  Widget build(BuildContext context) {
    final itemListProvider = Provider.of<ItemListProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(170, 171, 202, 1),
        body: ListView.builder(
          itemCount: itemListProvider.items.length,
          itemBuilder: (context, index) {
            final item = itemListProvider.items[index];
            return ListTile(
              title: Text(item.name),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  itemListProvider.removeItem(item);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}