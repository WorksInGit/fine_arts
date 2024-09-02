import 'package:fine_arts/student/std_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class StdEvent extends StatefulWidget {
  const StdEvent({super.key});

  @override
  State<StdEvent> createState() => _StdEventState();
}

class _StdEventState extends State<StdEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Text('Event',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
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
                            return EventDetail();
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
class EventDetail extends StatefulWidget {
  const EventDetail({super.key});

  @override
  State<EventDetail> createState() => _StdDetailsState();
}

class _StdDetailsState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                Text('Event Detail',
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
          Text(
            'Mohiniyattam',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 30),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildProfileDetailRow('ID Number'),
                    SizedBox(
                      height: 20.h,
                    ),
                    buildProfileDetailRow('Department'),
                    SizedBox(
                      height: 20.h,
                    ),
                    buildProfileDetailRow('Phone Number'),
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
                    buildProfileDetailRow2('0000000'),
                    SizedBox(
                      height: 20.h,
                    ),
                    buildProfileDetailRow2('Bsc Computer'),
                    SizedBox(
                      height: 20.h,
                    ),
                    buildProfileDetailRow2('98567472'),
                    SizedBox(
                      height: 20.h,
                    ),
                    buildProfileDetailRow2('Collage')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 250.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return StdTab();
                },
              ));
            },
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return StdApply();
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
          )
        ],
      ),
    );
  }

  Widget buildProfileDetailRow(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Aligns label to start and value to end
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Aligns label to start and value to end
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
}
class StdApply extends StatefulWidget {
  const StdApply({super.key});

  @override
  State<StdApply> createState() => _StdApplyState();
}

class _StdApplyState extends State<StdApply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  width: 140.w,
                ),
                Text('Apply',
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
          ],
      ),
    );
  }
}