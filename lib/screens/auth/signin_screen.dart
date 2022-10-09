import 'package:bbot/components/admin_navigator.dart';
import 'package:bbot/components/bottom_navigation.dart';
import 'package:bbot/screens/admin/dashboard_screen.dart';
import 'package:bbot/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/constants.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => BottomNavigation())));
              },
              child: Text('Sigin as User'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(primaryButtonColor),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 16, horizontal: 40)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => AdminBottomNavigation())));
              },
              child: Text('Sigin as Admin'),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(primaryButtonColor),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: 16, horizontal: 40)),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
