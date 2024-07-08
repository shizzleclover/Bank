import 'dart:async';
import 'package:bankappui/Pages/Onboarding_Pages/onboardin_1.dart';
import 'package:bankappui/Pages/SplashScreen/splash_2.dart';
import 'package:bankappui/constants.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Navigate to home page after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SplashPage2()), // Replace with your home page
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
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 180),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('Assets/Images/lg.png'),
                  Text(
                    'TransferMe',
                    style: TextStyle(
                      color: circ1,
                      fontSize: 54.0,
                      fontFamily: 'Sanfran',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Your Best Money Transfer Partner.',
                    style: TextStyle(
                      color: circ1,
                      fontSize: 13.0,
                      fontFamily: 'Sanfran',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding:   EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Secured by',
                      style: TextStyle(
                        fontFamily: 'Sanfran',
                        color: txt,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      ' TransferMe',
                      style: TextStyle(
                        fontFamily: 'Sanfran',
                        color: circ1,
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
