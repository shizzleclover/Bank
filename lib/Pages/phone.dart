import 'package:bankappui/Pages/Onboarding_Pages/onboarding_2.dart';
import 'package:bankappui/Pages/phone.dart';
import 'package:bankappui/Pages/verify.dart';
import 'package:bankappui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhonePage extends StatelessWidget {
  const PhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 80),
              child: Row(
                children: [
                  Container(
                    height: 34.42,
                    width: 64,
                    decoration: BoxDecoration(
                      color: circ1,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontFamily: 'Sanfran',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: txt,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Please add your\nmobile phone number',
                    style: TextStyle(
                      fontFamily: 'Sanfran',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: txt,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sanfran',
                      color: txt,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: '+2349012995866',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VerifyPage()),
                      );
                    },
                    child: Container(
                      width: 201,
                      height: 72,
                      decoration: BoxDecoration(
                        color: circ1,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            fontFamily: 'Sanfran',
                            color: pure,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
