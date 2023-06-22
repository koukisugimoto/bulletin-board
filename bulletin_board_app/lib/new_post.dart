import 'package:bulletin_board_app/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class newPostPage extends StatefulWidget {

  @override
  _newPostPage createState() => _newPostPage();
}

class _newPostPage extends State<newPostPage> {

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