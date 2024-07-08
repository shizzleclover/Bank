import 'package:bankappui/Pages/signup.dart';
import 'package:bankappui/constants.dart';
import 'package:flutter/material.dart';

class Onboard7Page extends StatelessWidget {
  const Onboard7Page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 180),
            Image.asset('Assets/Images/atm.png'),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Color Your Cards',
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
                  'Provides better cards management  when using Multiple Cards by using a  different color for each payment  method.',style: TextStyle(color: txt, fontSize: 14, fontWeight:FontWeight.w500 ),
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
                        onTap:(){ Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>    SignupPagePage()), 
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
                      ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}