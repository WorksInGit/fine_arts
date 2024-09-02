import 'package:fine_arts/admin/add_event.dart';
import 'package:fine_arts/organizer/org_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class TabEvent2 extends StatefulWidget {
  const TabEvent2({super.key});

  @override
  State<TabEvent2> createState() => _TabEvent2State();
}

class _TabEvent2State extends State<TabEvent2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              child: Card(
                child: Container(
                  height: 50.h,
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: HexColor('#558DBB'),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Kuchupudi',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TabEventResult extends StatefulWidget {
  const TabEventResult({super.key});

  @override
  State<TabEventResult> createState() => _TabEventResultState();
}

class _TabEventResultState extends State<TabEventResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return OrgResultDetails();
                    },
                  ));
                },
                child: Container(
                  child: Card(
                    child: Container(
                      height: 50.h,
                      width: 300.w,
                      decoration: BoxDecoration(border: Border.all(width: 0.6)),
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
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return AddResult();
                },
              ));
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 40.sp,
            ),
            backgroundColor: HexColor('#FDBE40'),
            shape: CircleBorder(),
          ),
        ));
  }
}

class AddResult extends StatefulWidget {
  const AddResult({super.key});

  @override
  State<AddResult> createState() => _AddResulState();
}

class _AddResulState extends State<AddResult> {
  String? selectedValue;
  final List<String> items = [
    'Oppana',
    'Mappila Pattu',
    'Kathakali',
    'Kolkali'
  ];
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
                Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 30.sp,
                ),
                SizedBox(
                  width: 110,
                ),
                Text('Add Reslult',
                    style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            height: 50.h,
            width: 300.w,
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButton(
                    hint: Text('Select the item'),
                    value: selectedValue,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue;
                      });
                    },
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        child: Text(value),
                        value: value,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 50),
            child: Row(
              children: [
                Text(
                  'Image',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 200.h,
            width: 300.w,
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
          Padding(
            padding: const EdgeInsets.only(top: 290),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return OrgTabBar();
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
          ),
        ],
      ),
    );
  }
}

class OrgResultDetails extends StatefulWidget {
  const OrgResultDetails({super.key});

  @override
  State<OrgResultDetails> createState() => _OrgResultDetailsState();
}

class _OrgResultDetailsState extends State<OrgResultDetails> {
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
                          return OrgTabBar();
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
            width: 350.sp,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all()),
            child: Center(
                child: Container(
              height: 80.h,
              width: 80.sp,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage('assets/organizer/photo_icon2.png'))),
            )),
          ),
        ],
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
