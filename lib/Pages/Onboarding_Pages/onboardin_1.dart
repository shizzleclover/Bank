import 'package:bankappui/Pages/Onboarding_Pages/onboarding_2.dart';
import 'package:flutter/material.dart';
import 'package:bankappui/constants.dart'; // Assuming you have constants defined

class Onboard1Page extends StatelessWidget {
  const Onboard1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 350),
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: circ1,
                        borderRadius: BorderRadius.circular(75),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: circ2, // Define circ2 in your constants
                        borderRadius: BorderRadius.circular(75),
                      ),
                      transform: Matrix4.translationValues(50, 0, 0), // Adjust the x value to control the overlap
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                    Text('Welcome to', style: TextStyle(color: Colors.black, fontFamily: 'Sanfran', fontWeight: FontWeight.w700, fontSize: 45),),
                      Text('TransferMe', style: TextStyle(color: circ1, fontFamily: 'Sanfran', fontWeight: FontWeight.w700, fontSize: 45),),
                      SizedBox(height: 20,),
                      Text('Your Best Money Transfer Partner.', style: TextStyle(color: txt, fontSize: 13, fontWeight: FontWeight.w500),),
                      SizedBox(height: 40,),
                      GestureDetector(
                        onTap:     () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Onboard2Page ()), 
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
                            child: Text('Get Started', style: TextStyle(fontFamily: 'Sanfran', color: pure,  fontWeight: FontWeight.w600, fontSize: 22 ),),
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
 