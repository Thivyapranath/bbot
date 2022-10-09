import 'package:bbot/screens/notification_screen.dart';
import 'package:bbot/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                    width: MediaQuery.of(context).size.width * 4 / 5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProfileScreen())),
                            child: CircleAvatar(
                              foregroundImage:
                                  AssetImage('assets/images/avatar.png'),
                            ),
                          ),
                          Text(
                            'Rewards',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          IconButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NotificationScreen())),
                            icon: Icon(Icons.notifications_none_rounded),
                            iconSize: 30,
                          ),
                        ]),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 9 / 10,
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.filter_alt_outlined,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Filter',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(secondaryColor),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40)),
                                    ),
                                    suffixIconColor: primaryButtonColor,
                                    suffixIcon: Icon(Icons.search)),
                              ))
                        ],
                      )),
                  Container(
                    height: 150,
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: secondaryColor,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularPercentIndicator(
                            radius: 60.0,
                            animation: true,
                            animationDuration: 1000,
                            lineWidth: 5.0,
                            percent: 0.6,
                            center:
                                Image.asset('assets/images/icons/tropy.png'),
                            progressColor: Colors.green,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                    text: '1250',
                                    style: TextStyle(
                                        fontSize: 50,
                                        color: Color(0xff468B26),
                                        fontWeight: FontWeight.w900),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Points',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff468B26),
                                            fontWeight: FontWeight.w500),
                                      )
                                    ]),
                              ),
                              Text(
                                '1000 points till you next reward',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff468B26),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: ListView.builder(
                        itemCount: 40,
                        itemBuilder: (context, int) => ListTile(
                          leading: CircleAvatar(
                            foregroundImage:
                                AssetImage('assets/images/herbal.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(
                            'Enviroment Saver',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('Collect Badge !'),
                          trailing: Text('03/082022'),
                        ),
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
