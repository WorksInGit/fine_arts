import 'package:fine_arts/admin/add_event.dart';
import 'package:fine_arts/admin/admin_login.dart';
import 'package:fine_arts/organizer/org_login.dart';
import 'package:fine_arts/student/std_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AdminLogin();
                  },
                ));
              },
              child: Container(
                  height: 50.h,
                  width: 100.w,
                  decoration: BoxDecoration(color: HexColor('#204563')),
                  child: Center(
                      child: Text(
                    'Admin',
                    style: TextStyle(color: Colors.white),
                  ))),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return OrgLogin();
                  },
                ));
              },
              child: Container(
                  height: 50.h,
                  width: 100.w,
                  decoration: BoxDecoration(color: HexColor('#204563')),
                  child: Center(child: Text('Organizer',style: TextStyle(color: Colors.white),))),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return StdLogin();
                  },
                ));
              },
              child: Container(
                  height: 50.h,
                  width: 100.w,
                  decoration: BoxDecoration(color: HexColor('#204563')),
                  child: Center(child: Text('Student',style: TextStyle(color: Colors.white),))),
            ),
          ],
        ),
      ),
    );
  }
}
