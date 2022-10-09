import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/constants.dart';

class BinDetailsScreen extends StatelessWidget {
  const BinDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                width: MediaQuery.of(context).size.width * 4 / 5,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Text(
                        'Bin',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                      Icon(
                        Icons.notifications_none_rounded,
                        size: 30,
                      ),
                    ]),
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Container(
                                  width: 300,
                                  margin: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Flexible(
                                          child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: secondaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Image.asset(
                                              'assets/images/icons/id 1.png',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Bin ID',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Text('MB301'),
                                            ],
                                          )
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  margin: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Flexible(
                                          child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: secondaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Image.asset(
                                              'assets/images/icons/pin 1.png',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Bin Location',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Text('Main Building, Floor 403'),
                                            ],
                                          )
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  margin: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Flexible(
                                          child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: secondaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Image.asset(
                                              'assets/images/icons/charging-circle 1.png',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Bin Fill Status',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Text('25% Reached'),
                                            ],
                                          )
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  margin: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Flexible(
                                          child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: secondaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Image.asset(
                                              'assets/images/icons/help-web-button 1.png',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Other Issues',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Text('Assorted'),
                                            ],
                                          )
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 300,
                                  margin: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Flexible(
                                          child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: secondaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Image.asset(
                                              'assets/images/icons/user-check-interface-symbol 1.png',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Assign to ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Text('No One'),
                                            ],
                                          )
                                        ],
                                      )),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
