import 'package:fine_arts/admin/assign.dart';
import 'package:fine_arts/admin/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Org2 extends StatefulWidget {
  const Org2({super.key});

  @override
  State<Org2> createState() => _OrgDetailsState();
}

class _OrgDetailsState extends State<Org2> {
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
                  width: 110,
                ),
                Text('Organizer',
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
          SizedBox(
            height: 30,
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
            height: 20,
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
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,bottom: 5),
            child: Row(
              children: [
                Text('Assign',style: TextStyle(fontWeight: FontWeight.w500),),
              ],
            ),
          ),
          Container(
            height: 150,
            width: 330,
            decoration: BoxDecoration(color: Colors.white,border: Border.all(width: 0.6),
            borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      SizedBox(
                      width: 5,
                    ),
                      Text('⚫',style: TextStyle(fontSize: 8),),
                      Text('Kathakali')
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text('⚫',style: TextStyle(fontSize: 8),),
                    Text('Kolkali')
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Assign();
                  },));
                },
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                      color: HexColor('#204563'),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Assign',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
