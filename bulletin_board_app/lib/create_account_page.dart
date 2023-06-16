import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'follow_topic.dart';

class createAccountPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('新規登録', style: TextStyle(fontSize: 30.sp),),
            SizedBox(height: 40.h,),
            SizedBox(
              height: 100.h,
              width: 250.w,
              child: TextFormField(
                decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'UserName'),
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            SizedBox(height: 10.h,),
            SizedBox(
              height: 100.h,
              width: 250.w,
              child: TextFormField(
                decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'email'),
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => followTopicPage()));
                },
                child: Text('送信', style: TextStyle(fontSize: 20.sp),),
            ),
          ],
        ),
      ),
    );
  }
}