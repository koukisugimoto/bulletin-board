import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class myProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(170, 171, 202, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250.h,
                color: Colors.white,
              ),
              SizedBox(
                width: double.infinity,
                height: 20.h,
              ),
              Container(
                width: 100.w,
                height: 100.h,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}