import 'package:fine_arts/admin/tab_bar.dart';
import 'package:flutter/material.dart';
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
                  width: 10,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return TabBarMain();
                        },
                      ));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 30,
                    )),
                SizedBox(
                  width: 90,
                ),
                Text('Student Detail',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage('assets/admin/user.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                      height: 20,
                    ),
                    buildProfileDetailRow('Department'),
                    SizedBox(
                      height: 20,
                    ),
                    buildProfileDetailRow('Phone Number'),
                    SizedBox(
                      height: 20,
                    ),
                    buildProfileDetailRow('Location')
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildProfileDetailRow2('0000000'),
                    SizedBox(
                      height: 20,
                    ),
                    buildProfileDetailRow2('Bsc Computer'),
                    SizedBox(
                      height: 20,
                    ),
                    buildProfileDetailRow2('98567472'),
                    SizedBox(
                      height: 20,
                    ),
                    buildProfileDetailRow2('Collage')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 170,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TabBarMain();
                  },));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: HexColor('#0C5600'),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Accept',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: HexColor('#AE2A0D'),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text(
                  'Reject',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
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
      mainAxisAlignment: MainAxisAlignment
          .spaceBetween, // Aligns label to start and value to end
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
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
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
