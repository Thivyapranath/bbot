import 'package:bbot/constants/constants.dart';
import 'package:bbot/screens/auth/signin_screen.dart';
import 'package:bbot/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/bottom_navigation.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/images/welcome_image.png'),
              ),
              Container(
                child: Image.asset('assets/images/icon.png'),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 4 / 5,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      'A nation that destroys its soil destroys itself',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'A nation that destroys its soil destroys itself',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Register'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(primaryButtonColor),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 16, horizontal: 40)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => SigninScreen())));
                    },
                    child: Text(
                      'SignIn',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(secondaryColor),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 16, horizontal: 40)),
                    ),
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
