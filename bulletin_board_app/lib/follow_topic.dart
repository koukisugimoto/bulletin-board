import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home.dart';

class followTopicPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('気になるトピックをフォロー'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                  ]
              ),
              SizedBox(width: double.infinity, height: 10.h,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                  ]
              ),
              SizedBox(width: double.infinity, height: 10.h,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                  ]
              ),
              SizedBox(width: double.infinity, height: 10.h,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                  ]
              ),
              SizedBox(width: double.infinity, height: 10.h,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                  ]
              ),
              SizedBox(width: double.infinity, height: 10.h,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                  ]
              ),
              SizedBox(width: double.infinity, height: 10.h,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                  ]
              ),
              SizedBox(width: double.infinity, height: 10.h,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                  ]
              ),
              SizedBox(width: double.infinity, height: 10.h,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      color: Colors.lightBlueAccent,
                      width: 170.w,
                      height: 90.h,
                      child: const Center(child: Text('Sample Text'),),
                    ),
                  ]
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
                  },
                  child: Text('home')
              )
            ],
          ),
        ),
      ),
    );
  }
}