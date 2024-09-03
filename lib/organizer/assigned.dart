import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Assigned extends StatefulWidget {
  const Assigned({super.key});

  @override
  State<Assigned> createState() => _EventState();
}

class _EventState extends State<Assigned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20),
        child: Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    height: 130,
                    width: 330,
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
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10,left: 20),
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
                                padding: const EdgeInsets.only(left: 180,top: 30),
                                child: Row(
                                  children: [
                                    Icon(Icons.edit_document,size: 20,)
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
      ),
    );
  }
}
