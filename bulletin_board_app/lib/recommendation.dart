import 'package:flutter/material.dart';

class recommendationPage extends StatefulWidget {

  @override
  _recommendationPage createState() => _recommendationPage();
}

class _recommendationPage extends State<recommendationPage> {

  List<Widget> posts = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(170, 171, 202, 1),
        body: Column(
          children: posts,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(16, 5, 71, 1),
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              posts.add(const Text('add post'));
            });
          },
        ),
      ),
    );
  }
}