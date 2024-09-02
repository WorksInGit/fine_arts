import 'package:fine_arts/admin/add_event.dart';
import 'package:fine_arts/admin/org_details.dart';
import 'package:fine_arts/admin/std_details.dart';
import 'package:fine_arts/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class AdminTabBar extends StatefulWidget {
  const AdminTabBar({super.key});

  @override
  State<AdminTabBar> createState() => _StdListState();
}

class _StdListState extends State<AdminTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: TabBarView(
                    children: [AdminTab1(), AdminTab2(), AdminTab3()])),
            SizedBox(
              height: 10.h,
            ),
            Stack(
              children: [
                Container(
                  height: 50.h,
                  width: 300.w,
                  decoration: BoxDecoration(
                      color: HexColor('#204563'),
                      borderRadius: BorderRadius.circular(5)),
                  child: TabBar(
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      indicatorColor: HexColor('#FDBE40'),
                      indicator: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: HexColor('#FDBE40'),
                          borderRadius: BorderRadius.circular(5)),
                      indicatorPadding: EdgeInsets.only(top: 10, bottom: 10),
                      tabs: [
                        Tab(
                          child: Container(
                            height: 30.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Student',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 30.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Organizer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        Tab(
                          child: Container(
                            height: 30.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Event',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        )
                      ]),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}

class AdminTab1 extends StatefulWidget {
  const AdminTab1({super.key});

  @override
  State<AdminTab1> createState() => _AdminTab1State();
}

class _AdminTab1State extends State<AdminTab1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Student',
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return StdDetails();
                        },
                      ));
                    },
                    child: Container(
                      child: Card(
                        child: Container(
                          height: 60.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: Colors.black, width: 0.6)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/admin/user.png'))),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('ID Number')
                                ],
                              )
                            ],
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

class AdminTab2 extends StatefulWidget {
  const AdminTab2({super.key});

  @override
  State<AdminTab2> createState() => _ListView2State();
}

class _ListView2State extends State<AdminTab2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 130),
            child: Row(
              children: [
                Text(
                  'Organizer List',
                  style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return OrgDetails();
                        },
                      ));
                    },
                    child: Container(
                      child: Card(
                        child: Container(
                          height: 60.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(color: Colors.black, width: 0.6)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/admin/user.png'))),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('ID Number')
                                ],
                              )
                            ],
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

class AdminTab3 extends StatefulWidget {
  const AdminTab3({super.key});

  @override
  State<AdminTab3> createState() => _AdminTab3State();
}

class _AdminTab3State extends State<AdminTab3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 170),
            child: Row(
              children: [
                Text(
                  'Event',
                  style:
                      TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AddEvent();
                      },));
                    },
                    child: Container(
                      child: Card(
                        child: Container(
                          height: 120.h,
                          width: 350.w,
                          decoration: BoxDecoration(
                              color: HexColor('#558DBB'),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 10, left: 120),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Mohiniyattam',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 70.w,
                                        ),
                                        Icon(Icons.delete)
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 180),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Date : 7/12/2023',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Time : 10:00',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Stage : 3',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
        floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddEvent();
          },));
        },
        child: Icon(Icons.add,color: Colors.white,size: 40.sp,),
        backgroundColor: HexColor('#FDBE40'),

        shape: CircleBorder(),
        ),
      ),
    );
    
  }
}
