import 'package:fine_arts/admin/org2.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
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
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 130,
            width: 330,
            decoration: BoxDecoration(color: HexColor('#558DBB')),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 100),
                      child: Row(
                        children: [
                          Text(
                            'Mohiniyattam',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(Icons.delete)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 180, top: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Org2();
          },));
        },
        child: Icon(Icons.add,color: Colors.white,size: 40,),
        backgroundColor: HexColor('#FDBE40'),
        
        shape: CircleBorder(),
        ),
      ),
    );
  }
}
