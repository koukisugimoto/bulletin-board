import 'package:flutter/material.dart';
import 'item_provider.dart';
import 'package:provider/provider.dart';

class recommendationPage extends StatefulWidget {

  @override
  _recommendationPage createState() => _recommendationPage();
}

class _recommendationPage extends State<recommendationPage> {

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