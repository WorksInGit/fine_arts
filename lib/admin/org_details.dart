import 'package:fine_arts/admin/admin_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class OrgDetails extends StatefulWidget {
  const OrgDetails({super.key});

  @override
  State<OrgDetails> createState() => _OrgDetailsState();
}

class _OrgDetailsState extends State<OrgDetails> {
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
                  width: 110.w,
                ),
                Text('Organizer',
                    style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.bold))
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
            'Name',
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 80.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,bottom: 5),
            child: Row(
              children: [
                Text('ID Number',style: TextStyle(fontWeight: FontWeight.w500),),
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
                  hintStyle: TextStyle(fontWeight: FontWeight.w200)
                  ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,bottom: 5),
            child: Row(
              children: [
                Text('Phone No',style: TextStyle(fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  hintText: '987665456',
                  hintStyle: TextStyle(fontWeight: FontWeight.w200)),
            ),
          ),
          SizedBox(
            height: 120.h,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AdminTabBar();
                  },));
                },
                child: Container(
                  height: 50.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                      color: HexColor('#0C5600'),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Accept',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp),
                  )),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Container(
                height: 50.h,
                width: 150.w,
                decoration: BoxDecoration(
                    color: HexColor('#AE2A0D'),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  'Reject',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp),
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}
