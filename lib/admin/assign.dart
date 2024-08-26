import 'package:fine_arts/admin/add_event.dart';
import 'package:fine_arts/admin/org2.dart';
import 'package:fine_arts/admin/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Assign extends StatefulWidget {
  const Assign({super.key});

  @override
  State<Assign> createState() => _OrgDetailsState();
}

class _OrgDetailsState extends State<Assign> {
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
                          return Org2();
                        },
                      ));
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: 30,
                    )),
                SizedBox(
                  width: 125,
                ),
                Text('Assign',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 290,
                decoration: BoxDecoration(
                    color: HexColor('#558DBB'),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 15),
                  child: Text(
                    'Kathakali',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700,fontSize: 17),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.8),
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 290,
                decoration: BoxDecoration(
                    color: HexColor('#558DBB'),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 15),
                  child: Text(
                    'Kolikali',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700,fontSize: 17),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 440,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AddEvent();
                    },
                  ));
                },
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                      color: HexColor('#204563'),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Submit',
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
