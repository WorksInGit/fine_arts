import 'package:fine_arts/admin/admin_tab_bar.dart';
import 'package:fine_arts/student/std_reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class StdLogin extends StatefulWidget {
  const StdLogin({super.key});

  @override
  State<StdLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<StdLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Username'),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Password'),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AdminTabBar();
                },
              ));
            },
            child: Container(
              height: 50.h,
              width: 340.w,
              decoration: BoxDecoration(
                  color: HexColor('#204563'),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return StdReg();
                  },
                ));
              },
              child: Text(
                'Create new account',
                style: TextStyle(color: HexColor('#204563')),
              ))
        ],
      ),
    );
  }
}
