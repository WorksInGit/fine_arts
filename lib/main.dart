import 'package:fine_arts/admin/admin_login.dart';
import 'package:fine_arts/home.dart';
import 'package:fine_arts/organizer/org_login.dart';
import 'package:fine_arts/student/std_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 824),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fine Arts',
        home: Home()
      ),
    );
  }
}

