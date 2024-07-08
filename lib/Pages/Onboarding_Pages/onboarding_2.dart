import 'package:bankappui/Pages/Onboarding_Pages/onboarding_3.dart';
import 'package:flutter/material.dart';
import 'package:bankappui/constants.dart';

class Onboard2Page extends StatelessWidget {
  const Onboard2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 180),
            Image.asset('Assets/Images/run.png'),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Easy, Fast & Trusted',
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
                  'Fast money transfer and guaranteed safe transactions with others.',style: TextStyle(color: txt, fontSize: 19, fontWeight:FontWeight.w500 ),
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
                  ],
                ),
                SizedBox(height: 39,),
                  GestureDetector(
                        onTap:     () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Onboard3Page ()), 
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
