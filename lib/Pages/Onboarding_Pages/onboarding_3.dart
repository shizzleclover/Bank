import 'package:bankappui/Pages/Onboarding_Pages/onboarding_4.dart';
import 'package:bankappui/constants.dart';
import 'package:flutter/material.dart';
class Onboard3Page extends StatelessWidget {
  const Onboard3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 180),
            Image.asset('Assets/Images/save.png'),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Saving Your Money',
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
                  'Track the progress of your savings and start a habit of saving with',style: TextStyle(color: txt, fontSize: 19, fontWeight:FontWeight.w500 ),
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
                      MaterialPageRoute(builder: (context) => Onboard4Page ()), 
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