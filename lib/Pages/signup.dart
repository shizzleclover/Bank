import 'package:bankappui/Pages/Onboarding_Pages/onboardin_1.dart';
import 'package:bankappui/Pages/login.dart';
import 'package:bankappui/Pages/profile.dart';
import 'package:bankappui/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupPagePage extends StatelessWidget {
  const SignupPagePage({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode emailFocusNode = FocusNode();
    FocusNode passwordFocusNode = FocusNode();
    FocusNode confirmPasswordFocusNode = FocusNode();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('Assets/Images/logo.png'),
              const SizedBox(height: 40, width: 20),
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Sanfran',
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Email Address',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sanfran',
                  color: txt,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                focusNode: emailFocusNode,
                decoration: InputDecoration(
                  hintText: 'Mainideas@gmail.com',
                  hintStyle: TextStyle(fontFamily: 'Sanfran', color: txt),
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: bord),
                  ),
                ),
                onTap: () {
                  emailFocusNode.requestFocus();
                },
              ),
              const SizedBox(height: 40),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sanfran',
                  color: txt,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                focusNode: passwordFocusNode,
                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: bord),
                  ),
                ),
                onTap: () {
                  passwordFocusNode.requestFocus();
                },
              ),
              const SizedBox(height: 20),
              Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sanfran',
                  color: txt,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                focusNode: confirmPasswordFocusNode,
                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:bord),
                  ),
                ),
                onTap: () {
                  confirmPasswordFocusNode.requestFocus();
                },
              ),
              const SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
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
                        'Sign Up',
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
              ),
              SizedBox(height: 60),
              Row(
                children: [
                  SizedBox(width: 100),
                  Image.asset('Assets/Images/line.png'),
                  SizedBox(width: 10),
                  Text('OR'),
                  SizedBox(width: 10),
                  Image.asset('Assets/Images/line.png'),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 130),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: cont,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Image.asset('Assets/Images/google.png'),
                    ),
                  ),
                  SizedBox(width: 20),
                  SvgPicture.asset('Assets/Icons/fab.svg'),
                ],
              ),
              SizedBox(height: 20,),
         Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Already have an account?',
        style: TextStyle(color: txt),
      ),
      SizedBox(width: 7), // Add some space between the texts
      GestureDetector(
        onTap: ( ) {
               Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
        },
        child: Text(
          'Login',
          style: TextStyle(color: circ1),
        ),
      ),
    ],
  ),
)

            ],
          ),
        ),
      ),
    );
  }
}
