import 'package:bankappui/Pages/Onboarding_Pages/onboarding_7.dart';
import 'package:bankappui/Pages/signup.dart';
import 'package:bankappui/constants.dart';
import 'package:flutter/material.dart';

class Onboard6Page extends StatelessWidget {
  const Onboard6Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 180),

            Stack(
              children: [
                Row(
                  children: [
                    Image.asset('Assets/Images/inj1.png'),
                    Image.asset('Assets/Images/inj.png'),
                  ],
                ),
              ],
            ),
             
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Bills Payment\n Made Easy',
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
                  'Pay monthly or daily bills at home in a site of TransferMe.',style: TextStyle(color: txt, fontSize: 17, fontWeight:FontWeight.w500 ),
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
                      MaterialPageRoute(builder: (context) =>   Onboard7Page()), 
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