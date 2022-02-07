// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/login_page.dart';
import 'package:flutterapp_geez1/theme.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: 125,
          left: 40,
          right: 40,
        ),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/icon_logo.png',
                width: 200,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Register",
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 35,
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
                  hintText: 'Name',
                  hintStyle: greyTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                  hintText: 'Email',
                  hintStyle: greyTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                  hintText: 'Password',
                  hintStyle: greyTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                  hintText: 'Re-Type Password',
                  hintStyle: greyTextStyle,
                ),
              ),
            ),
            SizedBox(
              height: 30,
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
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text(
                  'Register',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have account?",
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 5,
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
                    "Login",
                    style: yellowcreamTextStyle.copyWith(
                      fontSize: 12,
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
