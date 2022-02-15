// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/home_page.dart';
import 'package:flutterapp_geez1/pages/product_page.dart';
import 'package:flutterapp_geez1/pages/profile_page.dart';
import 'package:flutterapp_geez1/theme.dart';
import 'package:flutterapp_geez1/widgets/notification_tile.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80),
            Center(
              child: Text(
                'Notification',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            NotificationTile(
              imageUrl: 'assets/grey_time.png',
              title: 'Order #20181111123 has arrived!',
              text:
                  "What you've been waiting for has arrived! Don't forget \nto confirm on the history page!",
              time: '09-04-2021 17:51',
            ),
            NotificationTile(
              imageUrl: 'assets/grey_time.png',
              title: 'Order #20181111122 has been cancelled',
              text:
                  "Your order has been canceled by the system. Chat to \nthe shop owner for more information",
              time: '05-04-2021 17:51',
            ),
            NotificationTile(
              imageUrl: 'assets/grey_time.png',
              title: 'Order #20181111121 is being processed',
              text:
                  "hurray.. the seller is preparing your order wait a little \nlonger, okay?",
              time: '01-04-2021 17:51',
            ),
            NotificationTile(
              imageUrl: 'assets/grey_time.png',
              title: 'Order #20181111120 waiting for your payment',
              text:
                  "let's complete the payment or your order will be \nautomatically canceled by the system in 3 days",
              time: '25-03-2021 17:51',
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
        currentIndex: 2,
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
                padding: const EdgeInsets.only(
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
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 5,
                ),
                child: Image.asset(
                  'assets/navbar_notifon.png',
                  width: 16,
                ),
              ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 5,
                ),
                child: InkWell(
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
                  child: Image.asset(
                    'assets/navbar_profile.png',
                    width: 16,
                  ),
                ),
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
