import 'package:fine_arts/organizer/org_appeal.dart';
import 'package:fine_arts/organizer/tab_bar_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class OrgTabBar extends StatefulWidget {
  const OrgTabBar({super.key});

  @override
  State<OrgTabBar> createState() => _StdListState();
}

class _StdListState extends State<OrgTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child:
                    TabBarView(children: [OrgTab1(), OrgTab2(), OrgAppeal()])),
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
                              'Assigned',
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
                        ),
                        Tab(
                          child: Container(
                            height: 30.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Appeal',
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

class OrgTab1 extends StatefulWidget {
  const OrgTab1({super.key});

  @override
  State<OrgTab1> createState() => _EventState();
}

class _EventState extends State<OrgTab1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 130.h,
                        width: 330.w,
                        decoration: BoxDecoration(
                            color: HexColor('#558DBB'),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 100),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      'Margamkali',
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
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 20),
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
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 180, top: 30),
                                    child: Row(
                                      children: [
                                        Icon(Icons.edit_document, size: 20.sp)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrgTab2 extends StatefulWidget {
  const OrgTab2({super.key});

  @override
  State<OrgTab2> createState() => _TabBar2State();
}

class _TabBar2State extends State<OrgTab2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 40.h,
                      width: 300.w,
                      decoration: BoxDecoration(color: Colors.cyan[100]),
                      child: TabBar(
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(
                            color: HexColor('#FDBE40'),
                          ),
                          tabs: [
                            Tab(
                              text: 'Events',
                            ),
                            Tab(
                              text: 'Result',
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
                child: TabBarView(children: [TabEvent2(), TabEventResult()]))
          ],
        ),
      ),
    );
  }
}
