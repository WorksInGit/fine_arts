import 'package:fine_arts/admin/admin_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class StdDetails extends StatefulWidget {
  const StdDetails({super.key});

  @override
  State<StdDetails> createState() => _StdDetailsState();
}

class _StdDetailsState extends State<StdDetails> {
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
                  width: 90.w,
                ),
                Text('Student Detail',
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
            'Name',
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
