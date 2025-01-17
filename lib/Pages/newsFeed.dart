
import 'package:bankappui/Pages/widgets/appbar.dart';
import 'package:flutter/material.dart';
 

import 'package:flutter_svg/flutter_svg.dart';

class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: const CustomAppBar(
        leftIconPath: "assets2/images/arrows-left.svg",
        title: "News Feed",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Latest Update",
                  style: TextStyle(
                    fontFamily: "SanFran",
                    fontSize: 18,
                    color: Color.fromRGBO(135, 135, 135, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset("assets2/images/dollar.png")],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Dollar goes up 21.3%",
                            style: TextStyle(
                                fontFamily: 'SanFran',
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets2/images/calendar.svg",
                                colorFilter: const ColorFilter.mode(
                                    Colors.black, BlendMode.srcIn),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "20/3/2022 - 7:30 AM",
                                style: TextStyle(
                                    fontFamily: 'SanFran',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(135, 135, 135, 1)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SvgPicture.asset("assets2/images/tag.svg")
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: const [
                      TextSpan(
                        text: "By ",
                        style: TextStyle(
                          fontFamily: 'SanFran',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Rues Dan",
                        style: TextStyle(
                          fontFamily: 'SanFran',
                          fontSize: 12,
                          color: Color.fromRGBO(82, 100, 190, 1),
                        ),
                      )
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
