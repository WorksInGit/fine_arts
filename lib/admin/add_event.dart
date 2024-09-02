import 'package:fine_arts/admin/admin_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _OrgDetailsState();
}

class _OrgDetailsState extends State<AddEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return AdminTabBar();
                          },
                        ));
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: 30.sp,
                      )),
                  SizedBox(
                    width: 120.w,
                  ),
                  Text('Add Event',
                      style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
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
                    hintText: '000000',
                    hintStyle: TextStyle(fontWeight: FontWeight.w200)),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 5),
              child: Row(
                children: [
                  Text(
                    'Date',
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
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 5),
              child: Row(
                children: [
                  Text(
                    'Stage No',
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
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 5),
              child: Row(
                children: [
                  Text(
                    'Time',
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
            SizedBox(
              height: 170.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    width: 330.w,
                    decoration: BoxDecoration(
                        color: HexColor('#204563'),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.sp),
                    )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
