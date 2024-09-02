import 'package:fine_arts/student/std_event.dart';
import 'package:fine_arts/student/std_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class StdResult extends StatefulWidget {
  const StdResult({super.key});

  @override
  _StdResultState createState() => _StdResultState();
}

class _StdResultState extends State<StdResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Text('Result',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return StdResultDetail();
                          },
                        ));
                      },
                      child: Container(
                        child: Card(
                          child: Container(
                            height: 50.h,
                            width: 300.w,
                            decoration: BoxDecoration(border: Border.all(width: 0.6),
                            color: Colors.white
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Container(
                                      height: 30.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/organizer/photo_icon.png')))),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  Text(
                                    'Mohiniyattam',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 17.sp),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
          ),
        ],
      ),
    );
  }
}
class StdResultDetail extends StatefulWidget {
  const StdResultDetail({super.key});

  @override
  State<StdResultDetail> createState() => _OrgResultDetailsState();
}

class _OrgResultDetailsState extends State<StdResultDetail> {
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
                            return StdTab();
                          },
                        ));
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: 30.sp,
                      )),
                  SizedBox(
                    width: 110.w,
                  ),
                  Text('Event Result',
                      style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Mohiniyattam',
              style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110, top: 30),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildProfileDetailRow('Date'),
                      SizedBox(
                        height: 20.h,
                      ),
                      buildProfileDetailRow('Stage No'),
                      SizedBox(
                        height: 20.h,
                      ),
                      buildProfileDetailRow('Time'),
                      SizedBox(
                        height: 20.h,
                      ),
                      buildProfileDetailRow('Location')
                    ],
                  ),
                  SizedBox(
                    width: 40.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildProfileDetailRow2('18/07/23'),
                      SizedBox(
                        height: 20.h,
                      ),
                      buildProfileDetailRow2('02'),
                      SizedBox(
                        height: 20.h,
                      ),
                      buildProfileDetailRow2('1:30 Pm'),
                      SizedBox(
                        height: 20.h,
                      ),
                      buildProfileDetailRow2('Ground')
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Result',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                  ),
                ],
              ),
            ),
            Container(
              height: 400.h,
              width: 350.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all()),
              child: Center(
                  child: Container(
                height: 80.h,
                width: 80.w,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage('assets/organizer/photo_icon2.png'))),
              )),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return StdAppeal();
                },));
              },
              child: Container(
                height: 50.h,
                width: 350.w,
                decoration: BoxDecoration(
                    color: HexColor('#204563'),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  'Appeal',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp),
                )),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildProfileDetailRow(String label) {
  return Row(
    mainAxisAlignment: MainAxisAlignment
        .spaceBetween, // Aligns label to start and value to end
    children: [
      Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.sp,
        ),
      ),
    ],
  );
}

Widget buildProfileDetailRow2(String label) {
  return Row(
    mainAxisAlignment: MainAxisAlignment
        .spaceBetween, // Aligns label to start and value to end
    children: [
      Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w200,
          fontSize: 16.sp,
        ),
      ),
    ],
  );
}
class StdAppeal extends StatefulWidget {
  const StdAppeal({super.key});

  @override
  State<StdAppeal> createState() => _StdAppealState();
}

class _StdAppealState extends State<StdAppeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [Padding(
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
                            return StdTab();
                          },
                        ));
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                        size: 30.sp,
                      )),
                  SizedBox(
                    width: 110.w,
                  ),
                  Text('Apply Appeal',
                      style:
                          TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Container(
              height: 80.h,
              width: 80.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage('assets/admin/user.png'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 20.h,
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
                          hintStyle: TextStyle(fontWeight: FontWeight.w200)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 5),
                    child: Row(
                      children: [
                        Text(
                          'Video LInk',
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
                          'Department',
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
                          'Description',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 159.h,
                      width: 350.w,
                      decoration: BoxDecoration(border: Border.all(width: 0.7)),
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return StdTab();
                  },));
                },
                child: Container(
                  height: 50.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: HexColor('#204563'),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Apply',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp),
                  )),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
            ],
        ),
      ),
    );
  }
}