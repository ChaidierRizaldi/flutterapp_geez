// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/home_page.dart';
import 'package:flutterapp_geez1/pages/notification_page.dart';
import 'package:flutterapp_geez1/pages/product_page.dart';
import 'package:flutterapp_geez1/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                'Profile',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Image.asset(
              'assets/profile_pic.png',
              width: 110,
              height: 110,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'John Doe',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 36,
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order History',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: greyTextStyle.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 16,
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/pending_icon.png',
                        width: 64,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Pending',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/packed_icon.png',
                        width: 64,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Packed',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/otw_icon.png',
                        width: 64,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'On The Way',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/arrived_icon.png',
                        width: 64,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Arived',
                        style: whiteTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 56,
                left: 15,
                right: 15,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Edit Profile',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        'assets/right_arrow.png',
                        width: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Divider(
              color: greyColor,
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 24,
                left: 15,
                right: 15,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Address',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        'assets/right_arrow.png',
                        width: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Divider(
              color: greyColor,
              thickness: 1,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: 343,
              height: 47,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: yellowcreamColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Logout',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: whiteTextStyle.copyWith(
          fontSize: 10,
        ),
        unselectedLabelStyle: greyTextStyle.copyWith(
          fontSize: 10,
        ),
        selectedItemColor: whiteColor,
        unselectedItemColor: greyColor,
        type: BottomNavigationBarType.fixed,
        backgroundColor: navyColor,
        currentIndex: 3,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  top: 16,
                  bottom: 5,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            HomePage(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/navbar_home.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  top: 16,
                  bottom: 5,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            ProductPage(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/navbar_product.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Product'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  top: 16,
                  bottom: 5,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            NotificationPage(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/navbar_notif.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  top: 16,
                  bottom: 5,
                ),
                child: Image.asset(
                  'assets/navbar_profileon.png',
                  width: 16,
                ),
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
