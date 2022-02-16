// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/home_page.dart';
import 'package:flutterapp_geez1/pages/profile_page.dart';
import 'package:flutterapp_geez1/theme.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 60,
              left: 15,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            ProfilePage(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: greendarkColor,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/left_arrow.png',
                          width: 28,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 93,
                ),
                Text(
                  'Edit Profile',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 34,
          ),
          Image.asset(
            'assets/edit_profile.png',
            width: 110,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: whiteTextStyle,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 350,
                    height: 55,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: whiteTextStyle,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 20,
                          top: 11,
                        ),
                        fillColor: greendarkColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Edit your name',
                        hintStyle: greyTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: whiteTextStyle,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 350,
                    height: 55,
                    child: TextFormField(
                      cursorColor: Colors.white,
                      style: whiteTextStyle,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 20,
                          top: 11,
                        ),
                        fillColor: greendarkColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Edit your email',
                        hintStyle: greyTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: whiteTextStyle,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 350,
                    height: 55,
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Colors.white,
                      style: whiteTextStyle,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 20,
                          top: 11,
                        ),
                        fillColor: greendarkColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Edit your password',
                        hintStyle: greyTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Re-Type Password',
                    style: whiteTextStyle,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 350,
                    height: 55,
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Colors.white,
                      style: whiteTextStyle,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 20,
                          top: 11,
                        ),
                        fillColor: greendarkColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        hintText: 'Re-Type your password',
                        hintStyle: greyTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            width: 350,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: navylightColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text(
                'Save',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Discard',
              style: yellowcreamTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
