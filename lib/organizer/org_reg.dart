import 'package:fine_arts/organizer/org_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class OrgReg extends StatefulWidget {
  const OrgReg({super.key});

  @override
  State<OrgReg> createState() => _LoginState();
}

class _LoginState extends State<OrgReg> {
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
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage('assets/organizer/fine_logo.png'))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              'Registration',
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 5),
                  child: Row(
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintStyle: TextStyle(fontWeight: FontWeight.w200)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 5),
                  child: Row(
                    children: [
                      Text(
                        'Phone No',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintStyle: TextStyle(fontWeight: FontWeight.w200)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 5),
                  child: Row(
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintStyle: TextStyle(fontWeight: FontWeight.w200)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 5),
                  child: Row(
                    children: [
                      Text(
                        'ID Number',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintStyle: TextStyle(fontWeight: FontWeight.w200)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return OrgTabBar();
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
                  'Submit',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
