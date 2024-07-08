import 'dart:async';
import 'package:bankappui/Pages/Onboarding_Pages/onboardin_1.dart';
import 'package:bankappui/Pages/SplashScreen/splash_2.dart';
import 'package:bankappui/Pages/SplashScreen/splash_3.dart';
import 'package:bankappui/constants.dart';
import 'package:flutter/material.dart';

class SplashPage2 extends StatefulWidget {
  const SplashPage2({super.key});

  @override
  _SplashPage2State createState() => _SplashPage2State();
}

class _SplashPage2State extends State<SplashPage2> {
  @override
  void initState() {
    super.initState();
    // Navigate to home page after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SplashPage3()), // Replace with your home page
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: circ1),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 180.0),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('Assets/Images/lg2.png'),
                  Text(
                    'TransferMe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 54.0,
                      fontFamily: 'Sanfran',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Your Best Money Transfer Partner.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                      fontFamily: 'Sanfran',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Secured by',
                      style: TextStyle(
                        fontFamily: 'Sanfran',
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      ' TransferMe',
                      style: TextStyle(
                        fontFamily: 'Sanfran',
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
