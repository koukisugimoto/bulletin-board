import 'package:bulletin_board_app/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'create_account_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(411.43, 868.57),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: const MyHomePage(title: 'First Method',),
        );
      },
      // child: const MyHomePage(title: 'First Method'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool createAccountSelector = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => createAccountPage()));
              },
              child: Text('新規登録', style: TextStyle(fontSize: 25.sp, color: Colors.white)),
            ),
            SizedBox(height: 20.h,),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.zero),
                  ),
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
              },
              child: Text('ログイン', style: TextStyle(fontSize: 25.sp, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
