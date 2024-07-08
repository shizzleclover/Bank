import 'package:bankappui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 80, left: 30, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 42,
                    width: 63,
                    decoration: BoxDecoration(
                      color: circ1,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 30), // Adding spacing between container and text
                  Text(
                    'Card Details',
                    style: TextStyle(
                      fontFamily: 'Sanfran', // Make sure this matches the font name in your pubspec.yaml
                      fontSize: 16, // Adjust size as needed
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Adding spacing between rows
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage()),
                  );
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: cunt, // Assuming 'cunt' is a placeholder for an actual color variable
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('Assets/Icons/cd.svg'),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('VISA', style: TextStyle(fontFamily: 'Sanfran')),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text('Master Card', style: TextStyle(fontFamily: 'Sanfran')),
                                    SizedBox(width: 10),
                                    Text('.', style: TextStyle(fontFamily: 'Sanfran')),
                                    SizedBox(width: 15),
                                    Text('6253', style: TextStyle(fontFamily: 'Sanfran')),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '\$758,964.10',
                          style: TextStyle(fontFamily: 'Sanfran'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height:35),
              Container(
                height: 64,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: cont2,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 96,
                        height: 48,
                        decoration: BoxDecoration(
                          color: circ1,
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      SizedBox(width: 20,),
                       Container(
                        width: 96,
                        height: 48,
                        decoration: BoxDecoration(
                          color: circ2,
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                      SizedBox(width: 20,),
                       Container(
                        width: 96,
                        height: 48,
                        decoration: BoxDecoration(
                          color: circ2,
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ],
                  ),
                  ),
              ),
              SizedBox(height: 40,),
              Column(
                children: [
                  Center(
                    child: Container(
                      width: 153,
                      height: 72,
                      decoration: BoxDecoration(
                        color: circ1,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text('Add Card'),
                      ),
                    ),
                  ),
                ],
              ),
                   SizedBox(height: 30),
                      Row(
                        children: [
                          Text('Cash Backs', style: TextStyle(fontFamily: 'Sanfran')),
                          Spacer(),
                          Text('See All', style: TextStyle(fontFamily: 'Sanfran')),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios, size: 14),
                          ),
                        ],
                      ),
                       SizedBox(height: 20),
                      Container(
                        height: 79,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 57, // Adjust this to the desired height
                                width: 57, // Adjust this to the desired width
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: circ2, // Assuming circ2 is defined elsewhere
                                ),
                                child: Center(
                                  child: SvgPicture.asset('Assets/Icons/sb.svg'),
                                ),
                              ),
                              SizedBox(width: 40, height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Entertainment'),
                                  SizedBox(height: 20),
                                  Text('23 December 2020')
                                ],
                              ),
                              SizedBox(width: 40),
                              Column(
                                children: [
                                  SvgPicture.asset('Assets/Icons/'),
                                  SizedBox(height: 40),
                                  Text('- \$396.84')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      //2
                       SizedBox(height: 20),
                      Container(
                        height: 79,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 57, // Adjust this to the desired height
                                width: 57, // Adjust this to the desired width
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: circ1, // Assuming circ2 is defined elsewhere
                                ),
                                child: Center(
                                  child: SvgPicture.asset('Assets/Icons/spork.svg'),
                                ),
                              ),
                              SizedBox(width: 40, height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Entertainment'),
                                  SizedBox(height: 20),
                                  Text('23 December 2020')
                                ],
                              ),
                              SizedBox(width: 40),
                              Column(
                                children: [
                                  SvgPicture.asset('Assets/Icons/'),
                                  SizedBox(height: 40),
                                  Text('- \$396.84')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      //3
                       SizedBox(height: 20),
                      Container(
                        height: 79,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5, left: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 57, // Adjust this to the desired height
                                width: 57, // Adjust this to the desired width
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                
                                ),
                                child: Center(
                                 child: Image.asset('Assets/Images/5.png'),
                                ),
                              ),
                              SizedBox(width: 40, height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Entertainment'),
                                  SizedBox(height: 20),
                                  Text('23 December 2020')
                                ],
                              ),
                              SizedBox(width: 40),
                              Column(
                                children: [
                                  SvgPicture.asset('Assets/Icons/'),
                                  SizedBox(height: 40),
                                  Text('- \$396.84')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
