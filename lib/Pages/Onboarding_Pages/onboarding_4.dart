import 'package:bankappui/Pages/Onboarding_Pages/onboarding_5.dart';
import 'package:bankappui/constants.dart';
import 'package:flutter/material.dart';

class Onboard4Page extends StatelessWidget {
  const Onboard4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 180),
            Image.asset('Assets/Images/wom.png'),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Free Transactions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Sanfran',
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Provides the quality of the financial system with free money transactions without any fees..',style: TextStyle(color: txt, fontSize: 17, fontWeight:FontWeight.w500 ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: circ2,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: circ1,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: circ2,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 39,),
                  GestureDetector(
                        onTap:     () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Onboard5Page ()), 
                    );
                    },
                        child: Container(
                          width: 201,
                          height: 72,
                          decoration: BoxDecoration(
                            color: circ1,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text('Continue', style: TextStyle(fontFamily: 'Sanfran', color: pure,  fontWeight: FontWeight.w600, fontSize: 22 ),),
                          ),
                        ),
                      )
              ],
            ),
          ],
        ),
      ),
    );
  }
}