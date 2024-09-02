import 'package:fine_arts/admin/std_details.dart';
import 'package:fine_arts/student/std_event.dart';
import 'package:fine_arts/student/std_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class StdTab extends StatefulWidget {
  const StdTab({super.key});

  @override
  State<StdTab> createState() => _TabBar2State();
}

class _TabBar2State extends State<StdTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: TabBarView(children: [
                    StdEvent(),
                    StdResult()
                ])),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 60.h,
                      width: 350.w,
                      decoration: BoxDecoration(color: HexColor('#204563')),
                      child: TabBar(
                          unselectedLabelColor: Colors.white,
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
            
          ],
        ),
      ),
    );
  }
}




