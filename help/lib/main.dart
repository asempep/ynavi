import 'package:flutter/material.dart';
import 'screen/MainScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: TextField(
                controller: TextEditingController(),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(hintText: '위치 입력하세요'),
              ),
              // title: Text(
              //   'instagram',
              //   style: TextStyle(color: Colors.black),
              // ),
              leading: Icon(Icons.search_rounded),
              actions: [
                Icon(
                  Icons.directions,
                  color: Colors.blue[200],
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            body: Column(children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      color: Colors.grey[100],
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 40,
                              child: Text('카페',textAlign: TextAlign.center,),
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    color: Colors.green,
                                  )),
                            ),
                            Container(
                              width: 50,
                              height: 40,
                              child: Text('식당',textAlign: TextAlign.center,),
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    color: Colors.green,
                                  )),
                            ),
                            Container(
                              width: 50,
                              height: 40,
                              child: Text('버정',textAlign: TextAlign.center,),
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    color: Colors.green,
                                  )),
                            ),
                            Container(
                              width: 50,
                              height: 40,
                              child: Text('ATM',textAlign: TextAlign.center,),
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    color: Colors.green,
                                  )),
                            ),
                            Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    color: Colors.green,
                                  )),
                            ),
                            Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    color: Colors.green,
                                  )),
                            ),
                            Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    color: Colors.green,
                                  )),
                            ),
                            Container(
                              width: 50,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(40)),
                                  border: Border.all(
                                    color: Colors.green,
                                  )),
                            ),
                          ],
                        ),
                      ))),
              Expanded(
                  flex: 8,
                  child: Container(
                    child: Row(
                      children: [
                        Column(children: [
                          Container(
                              color: Colors.grey[300],
                              child: Icon(
                                Icons.gps_fixed,
                                size: 30,
                              )
                          ),
                          Container(
                            height: 50,
                            color: Colors.amber[600],
                            child: const Center(child: Text('Entry A')),
                          ),
                          Container(
                            height: 50,
                            color: Colors.amber[500],
                            child: const Center(child: Text('Entry B')),
                          ),
                          Container(
                            height: 50,
                            color: Colors.amber[100],
                            child: const Center(child: Text('Entry C')),
                          ),
                        ])
                      ],
                    ),
                  )
              )
            ]
            )
        )
    );
  }
}