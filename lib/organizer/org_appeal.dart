import 'package:fine_arts/organizer/org_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrgAppeal extends StatefulWidget {
  const OrgAppeal({super.key});

  @override
  State<OrgAppeal> createState() => _OrgAppealState();
}

class _OrgAppealState extends State<OrgAppeal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Appeal',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))
              ],
            ),
          ),
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
                          return AppealList();
                        },
                      ));
                    },
                    child: Container(
                      child: Card(
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration:
                              BoxDecoration(border: Border.all(width: 0.6)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/organizer/photo_icon.png')))),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Mohiniyattam',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
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
          )
        ],
      ),
    );
  }
}
class AppealList extends StatefulWidget {
  const AppealList({super.key});

  @override
  State<AppealList> createState() => _AppealListState();
}

class _AppealListState extends State<AppealList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return OrgTabBar();
                    },));
                  },
                  child: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
                SizedBox(
                  width: 110,
                ),
                Text('Appeal List',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return OrgTabBar();
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
                                    ),
                                    SizedBox(
                                      width: 130,
                                    ),
                                    Text('Rejected',style: TextStyle(color: Colors.red,
                                    fontWeight: FontWeight.w600
                                    ),)
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
