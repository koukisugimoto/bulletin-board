import 'package:flutter/material.dart';
import 'search_bar.dart';

class serchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(170, 171, 202, 1),
      appBar: searchBar(),
      body: Center(
        child: Text('search page'),
      ),
    );
  }
}