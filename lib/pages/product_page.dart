// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/cart_page.dart';
import 'package:flutterapp_geez1/pages/home_page.dart';
import 'package:flutterapp_geez1/pages/notification_page.dart';
import 'package:flutterapp_geez1/pages/profile_page.dart';
import 'package:flutterapp_geez1/pages/search_page.dart';
import 'package:flutterapp_geez1/theme.dart';
import 'package:flutterapp_geez1/widgets/product_list.dart';

class ProductPage extends StatelessWidget {
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
                right: 15,
              ),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                      width: 295,
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            top: 12,
                            bottom: 5,
                          ),
                          fillColor: greendarkColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(21),
                          ),
                          hintText: "I'm searching for..",
                          hintStyle: greyTextStyle.copyWith(
                            fontSize: 14,
                          ),
                          prefixIcon: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) =>
                                          SearchPage(),
                                  transitionDuration: Duration(seconds: 0),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.search,
                              color: greyColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: greendarkColor,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        CartPage(),
                                transitionDuration: Duration(seconds: 0),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/checkout_icon.png',
                            width: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 24,
                left: 18,
                right: 18,
                bottom: 50,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_two.png',
                        name: 'Nike Air Force X',
                        rating: 'assets/star_icon.png',
                        amount: '(16)',
                        price: 'Rp1.650.000',
                      ),
                      ProductList(
                        imageUrl: 'assets/watch.png',
                        name: 'Smartwatch 2.0',
                        rating: 'assets/star_icon.png',
                        amount: '(10)',
                        price: 'Rp4.500.000',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_three.png',
                        name: 'Philips LED Wi-Fi',
                        rating: 'assets/star_icon.png',
                        amount: '(30)',
                        price: 'Rp85.000',
                      ),
                      ProductList(
                        imageUrl: 'assets/product_four.png',
                        name: 'Garnier Pure Active',
                        rating: 'assets/star_icon.png',
                        amount: '(55)',
                        price: 'Rp27.839',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductList(
                        imageUrl: 'assets/product_five.png',
                        name: 'Rexus Headphone',
                        rating: 'assets/star_icon.png',
                        amount: '(15)',
                        price: 'Rp743.000',
                      ),
                      ProductList(
                        imageUrl: 'assets/product_six.png',
                        name: 'Airpods',
                        rating: 'assets/star_icon.png',
                        amount: '(5)',
                        price: 'Rp5.500.000',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "You've reached the end",
                    style: whiteTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
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
        currentIndex: 1,
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
                child: Image.asset(
                  'assets/navbar_producton.png',
                  width: 16,
                ),
              ),
              label: 'Product'),
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
