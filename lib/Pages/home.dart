import 'package:bankappui/Pages/carddetails.dart';
import 'package:bankappui/Pages/exchangerate.dart';
import 'package:bankappui/Pages/profilemain.dart';
import 'package:bankappui/Pages/statistics.dart';
import 'package:bankappui/Pages/wallet.dart';
import 'package:bankappui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Widget> navIcons = [
  SvgPicture.asset('Assets/Icons/Sidebar/chart.svg'),
   SvgPicture.asset('Assets/Icons/Sidebar/chart.svg'),
   SvgPicture.asset('Assets/Icons/Sidebar/chart.svg'),
    SvgPicture.asset('Assets/Icons/Sidebar/chart.svg'),
];

int selectedIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
  child: ListView(
  padding: EdgeInsets.all(16.0), // Add padding around the edges
  children: [
    SizedBox(height: 80,),
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 20.0), // Adjust padding to align with list items
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align texts to the start
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                ),
                child: Image.asset('Assets/Images/5.png'),
              ),
              SizedBox(height: 8.0), // Space between image and texts
              Text('William Smith'),
              Text('william.smith@gmail.com'),
            ],
          ),
        ),
      ],
    ),
    SizedBox(height: 90,),
    GestureDetector(
     onTap: () {
               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WalletScreen()),
                    );
      },
      child: ListTile(
        leading: SvgPicture.asset(
          'Assets/Icons/Sidebar/wall.svg',
          width: 24,
          height: 24,
        ),
        title: Text('My Wallet'),
      ),
    ),
    //1
    GestureDetector(
      onTap: () {
               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileSettingScreen()),
                    );
      },
      child: ListTile(
        leading: SvgPicture.asset(
          'Assets/Icons/Sidebar/prof.svg',
          width: 24,
          height: 24,
        ),
        title: Text('Profile'),
      ),
    ),
    //2

    GestureDetector(
      onTap: () {
             Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StatisticsScreen()),
                    );
      },
      child: ListTile(
        leading: SvgPicture.asset(
          'Assets/Icons/Sidebar/chart.svg',
          width: 24,
          height: 24,
        ),
        title: Text('Statistics'),
      ),
    ),
    ListTile(
      leading: SvgPicture.asset(
        'Assets/Icons/Sidebar/trans.svg',
        width: 24,
        height: 24,
      ),
      title: Text('Transfer'),
    ),
    ListTile(
      leading: SvgPicture.asset(
        'Assets/Icons/Sidebar/set.svg',
        width: 24,
        height: 24,
      ),
      title: Text('Settings'),
    ),
    SizedBox(height: 60,),
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        child:Container(
          width: 175,
          height: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: circ1
          ),
        child: Padding(
  padding: const EdgeInsets.all(40.0),
  child: Center(
    child: Row(
      mainAxisSize: MainAxisSize.min, // Center the content of the row
      children: [
        SvgPicture.asset('Assets/Icons/upload.svg'),
        SizedBox(width: 10,),
        Text('Log Out'),
      ],
    ),
  ),
),

        ),
      )
    ),
  ],
),


        backgroundColor: Colors.white,
      ),
      body: Builder(
        builder: (context) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 70),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: SvgPicture.asset('Assets/Icons/bar.svg'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset('Assets/Icons/bell.svg'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current Balance',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Sanfran',
                          color: txt,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '\$2,858,562.00',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: circ1,
                          fontFamily: 'Sanfran',
                        ),
                      ),
                      SizedBox(height: 20),
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
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Text('Incoming Transactions', style: TextStyle(fontFamily: 'Sanfran')),
                          Spacer(),
                          Text('See All', style: TextStyle(fontFamily: 'Sanfran')),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios, size: 14),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 229,
                              width: 157,
                              decoration: BoxDecoration(
                                color: pure,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('Assets/Images/52.png'),
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset('Assets/Icons/'),
                                            SizedBox(height: 20),
                                            Text('+ \$54.23', style: TextStyle(fontFamily: 'Sanfran')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text('From'),
                                  Image.asset('Assets/Images/wave.png'),
                                ],
                              ),
                            ),
                            SizedBox(width: 20), // Add spacing between containers
                            Container(
                              height: 229,
                              width: 157,
                              decoration: BoxDecoration(
                                color: pure,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('Assets/Images/58.png'),
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset('assets/icons/'),
                                            SizedBox(height: 20),
                                            Text('+ \$100.00', style: TextStyle(fontFamily: 'Sanfran')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text('From'),
                                  Image.asset('Assets/Images/wave.png'),
                                ],
                              ),
                            ),
                            SizedBox(width: 20), // Add spacing between containers
                            Container(
                              height: 229,
                              width: 163,
                              decoration: BoxDecoration(
                                color: pure,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('Assets/Images/52.png'),
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset('Assets/Icons/at.svg'),
                                            SizedBox(height: 5),
                                            Text('+ \$100.00', style: TextStyle(fontFamily: 'Sanfran')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text('From'),
                                  Image.asset('Assets/Images/wave.png'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Outgoing transactions
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Text('Outgoing Transactions', style: TextStyle(fontFamily: 'Sanfran')),
                          Spacer(),
                          Text('See All', style: TextStyle(fontFamily: 'Sanfran')),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios, size: 14),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 229,
                              width: 157,
                              decoration: BoxDecoration(
                                color: pure,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('Assets/Images/52.png'),
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset('Assets/Icons/'),
                                            SizedBox(height: 20),
                                            Text('+ \$54.23', style: TextStyle(fontFamily: 'Sanfran')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text('From'),
                                  Image.asset('Assets/Images/wave2.png'),
                                ],
                              ),
                            ),
                            SizedBox(width: 20), // Add spacing between containers
                            Container(
                              height: 229,
                              width: 157,
                              decoration: BoxDecoration(
                                color: pure,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('Assets/Images/58.png'),
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset('Assets/Icons/'),
                                            SizedBox(height: 20),
                                            Text('+ \$100.00', style: TextStyle(fontFamily: 'Sanfran')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text('From'),
                                  Image.asset('Assets/Images/wave2.png'),
                                ],
                              ),
                            ),
                            SizedBox(width: 20), // Add spacing between containers
                            Container(
                              height: 229,
                              width: 163,
                              decoration: BoxDecoration(
                                color: pure,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Image.asset('Assets/Images/52.png'),
                                        ),
                                        SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset('Assets/Icons/at.svg'),
                                            SizedBox(height: 5),
                                            Text('+ \$100.00', style: TextStyle(fontFamily: 'Sanfran')),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text('From'),
                                  Image.asset('Assets/Images/wave2.png'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Text('Other Transactions', style: TextStyle(fontFamily: 'Sanfran')),
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
                                height: 47, // Adjust this to the desired height
                                width: 47, // Adjust this to the desired width
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: circ2, // Assuming circ2 is defined elsewhere
                                ),
                                child: Center(
                                  child: SvgPicture.asset('Assets/Icons/upload.svg'),
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
                SizedBox(height: 30,),
                 Align(alignment: Alignment.bottomCenter,child: _navBar())
              ],
            ),
          ),
        ),
      ),
     
    );
  }
  Widget _navBar() {
    return Container(
      height: 70,
      width: double.infinity,
      // margin:const  EdgeInsets.only(
      //   right: 24,
      //   left: 24,
      //   bottom: 24   
      //      ),
           decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(20),
                blurRadius: 20
                ,spreadRadius: 10
              ),
            ]
           ),
           child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
         children: navIcons.map(
  (icon) {
    int index = navIcons.indexOf(icon);
    bool isSelected = selectedIndex == index;
    return Material(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              top: 15,
              bottom: 0,
              left: 35,
              right: 35,
            ),
           
          ),
        ],
      ),
    );
  },
).toList(), // Add .toList() if needed based on where you are using this code

           ),
    );
    
  }
}
