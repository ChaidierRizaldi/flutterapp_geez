// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/login_page.dart';
import 'package:flutterapp_geez1/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class StartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 50,
              left: 316,
            ),
            child: Text('Skip',
                style: whiteTextStyle.copyWith(
                  fontSize: 12,
                )),
          ),
          SizedBox(
            height: 96,
          ),
          Center(
            child: Image.asset(
              'assets/started_illustration.png',
              width: 311,
              height: 381,
            ),
          ),
          SizedBox(
            height: 33,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 32,
              right: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'No Competitor',
                  style: whiteTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Make more money and\nget your customer fast \nmatter most',
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 53,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/three_dots.png',
                      color: Color(0xffECB365),
                      width: 50,
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Let's Start",
                        style: yellowcreamTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
