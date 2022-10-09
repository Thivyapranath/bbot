import 'package:bbot/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:percent_indicator/percent_indicator.dart';

import '../profile_screen.dart';

class AdminDashboardScreen extends StatefulWidget {
  const AdminDashboardScreen({Key? key}) : super(key: key);

  @override
  State<AdminDashboardScreen> createState() => _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends State<AdminDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              color: headerFooterBackground,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen())),
                      child: CircleAvatar(
                        foregroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                    ),
                    Text(
                      'Dashboard',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Icon(
                      Icons.notifications_none_rounded,
                      size: 30,
                    ),
                  ]),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 11,
                                spreadRadius: 0,
                                color: Color.fromARGB(31, 189, 189, 189)),
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding:
                                  EdgeInsets.only(top: 10, left: 0, right: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Active Bins',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '16',
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image.asset(
                                              'assets/images/icons/active_bin.png')
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'inactive Bins',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '8',
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Image.asset(
                                              'assets/images/icons/inactive_bin.png')
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: double.maxFinite,
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: adminPrimaryGreen,
                              ),
                              child: CircularPercentIndicator(
                                radius: 50.0,
                                animation: true,
                                animationDuration: 1000,
                                lineWidth: 10.0,
                                percent: 0.7,
                                center: Icon(
                                  Icons.delete_rounded,
                                  size: 40,
                                  color: adminSecondaryGreen,
                                ),
                                progressColor: adminSecondaryGreen,
                                circularStrokeCap: CircularStrokeCap.round,
                                backgroundColor: adminSecondaryRed,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                          color: adminPrimaryRed,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 11,
                                spreadRadius: 0,
                                color: Color.fromARGB(31, 189, 189, 189)),
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                height: double.maxFinite,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'FOC',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('0.35 %'),
                                      ],
                                    ),
                                    Text(
                                      '6',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    LinearPercentIndicator(
                                      animation: true,
                                      backgroundColor: adminPrimaryRed,
                                      lineHeight: 8.0,
                                      animationDuration: 2500,
                                      percent: 0.14,
                                      progressColor: adminSecondaryRed,
                                      barRadius: Radius.circular(20),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                            'assets/images/icons/filled_bins.png'),
                                        Text('Filled Bins',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                height: double.maxFinite,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'FOC',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('0.17 %'),
                                      ],
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    LinearPercentIndicator(
                                      animation: true,
                                      backgroundColor: adminPrimaryRed,
                                      lineHeight: 8.0,
                                      animationDuration: 2500,
                                      percent: 0.1,
                                      progressColor: adminSecondaryRed,
                                      barRadius: Radius.circular(20),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                            'assets/images/icons/um_bin.png'),
                                        Text('Unresponsive',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                          color: adminPrimaryGreen,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 11,
                                spreadRadius: 0,
                                color: Color.fromARGB(31, 189, 189, 189)),
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                height: double.maxFinite,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'FOC',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('0.00 %'),
                                      ],
                                    ),
                                    Text(
                                      '0',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    LinearPercentIndicator(
                                      animation: true,
                                      backgroundColor: adminPrimaryGreen,
                                      lineHeight: 8.0,
                                      animationDuration: 2500,
                                      percent: 0.0,
                                      progressColor: adminSecondaryGreen,
                                      barRadius: Radius.circular(20),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                            'assets/images/icons/assorted_bins.png'),
                                        Text('Assorted Bins',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                )),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                                padding: EdgeInsets.all(12),
                                height: double.maxFinite,
                                margin: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'FOC',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('0.17 %'),
                                      ],
                                    ),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    LinearPercentIndicator(
                                      animation: true,
                                      backgroundColor: adminPrimaryGreen,
                                      lineHeight: 8.0,
                                      animationDuration: 2500,
                                      percent: 0.1,
                                      progressColor: adminSecondaryGreen,
                                      barRadius: Radius.circular(20),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                            'assets/images/icons/putrid_bins.png'),
                                        Text('Unresponsive',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
