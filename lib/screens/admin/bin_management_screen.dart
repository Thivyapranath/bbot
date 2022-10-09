import 'package:bbot/screens/admin/bin_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/constants.dart';
import '../notification_screen.dart';
import '../profile_screen.dart';

class AdminBinManagement extends StatefulWidget {
  const AdminBinManagement({Key? key}) : super(key: key);

  @override
  State<AdminBinManagement> createState() => _AdminBinManagementState();
}

class _AdminBinManagementState extends State<AdminBinManagement> {
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
                          foregroundImage:
                              AssetImage('assets/images/avatar.png'),
                        ),
                      ),
                      Text(
                        'Bin Management',
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
              SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: ListView.builder(
                    itemCount: 40,
                    itemBuilder: (context, int) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => BinDetailsScreen())));
                      },
                      child: ListTile(
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: adminPrimaryRed,
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            'assets/images/icons/vector_full.png',
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(
                            'Full',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text('100% Capacity Reached'),
                        ),
                        trailing: Text('MB101'),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
