import 'package:fine_arts/organizer/org_reg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class OrgLogin extends StatefulWidget {
  const OrgLogin({super.key});

  @override
  State<OrgLogin> createState() => _LoginState();
}

class _LoginState extends State<OrgLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Container(
              height: 110.h,
              width: 110.w,
              decoration: BoxDecoration(color: Colors.white,
              image: DecorationImage(image: AssetImage('assets/organizer/fine_logo.png'))
              ),
            ),
          ),
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
          Container(
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
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OrgReg();
                },));
              },
              child: Text('Create new account',style: TextStyle(fontSize: 16.sp),)),
          )
        ],
      ),
    );
  }
}
