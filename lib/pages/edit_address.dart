// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/home_page.dart';
import 'package:flutterapp_geez1/pages/profile_page.dart';
import 'package:flutterapp_geez1/theme.dart';
import 'package:flutterapp_geez1/widgets/form_tile.dart';

class EditAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: SingleChildScrollView(
        child: Column(
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
                    'My Address',
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
            Column(
              children: [
                FormTile(
                  text: 'Address Title',
                  hinText: 'Address Title',
                ),
                SizedBox(
                  height: 16,
                ),
                FormTile(
                  text: 'Name',
                  hinText: 'Name',
                ),
                SizedBox(
                  height: 16,
                ),
                FormTile(
                  text: 'Phone Number',
                  hinText: 'Phone Number',
                ),
                SizedBox(
                  height: 16,
                ),
                FormTile(
                  text: 'Road Name - House Number',
                  hinText: 'Road Name - House Number',
                ),
                SizedBox(
                  height: 16,
                ),
                FormTile(
                  text: 'Province',
                  hinText: 'Province',
                ),
                SizedBox(
                  height: 16,
                ),
                FormTile(
                  text: 'City',
                  hinText: 'City',
                ),
                SizedBox(
                  height: 16,
                ),
                FormTile(
                  text: 'Subdistrict',
                  hinText: 'Subdistrict',
                ),
                SizedBox(
                  height: 16,
                ),
                FormTile(
                  text: 'Pos Number',
                  hinText: 'Pos Number',
                ),
                SizedBox(
                  height: 16,
                ),
                FormTile(
                  text: 'Additional Details',
                  hinText: 'Additional Details',
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 40,
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
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
