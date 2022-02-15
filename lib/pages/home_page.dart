// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/cart_page.dart';
import 'package:flutterapp_geez1/pages/notification_page.dart';
import 'package:flutterapp_geez1/pages/product_page.dart';
import 'package:flutterapp_geez1/pages/profile_page.dart';
import 'package:flutterapp_geez1/pages/search_page.dart';
import 'package:flutterapp_geez1/theme.dart';
import 'package:flutterapp_geez1/widgets/categories_tile.dart';
import 'package:flutterapp_geez1/widgets/product_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        cursorColor: Colors.white,
                        style: whiteTextStyle,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            top: 12,
                            bottom: 5,
                          ),
                          fillColor: greendarkColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21),
                            borderSide: BorderSide.none,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(top: 24, left: 16),
                child: Row(
                  children: [
                    Container(
                      width: 294,
                      height: 148,
                      decoration: BoxDecoration(
                        color: purplegreyColor,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 27,
                          left: 24,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'New Arrival \nItem up to 30%',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    side: BorderSide(
                                      color: skyColor,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Grab it now',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 16,
                                left: 14,
                              ),
                              child: Image.asset(
                                'assets/product_one.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 294,
                      height: 148,
                      decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 27,
                          left: 24,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Flash Sale \n12.12',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17),
                                    ),
                                    side: BorderSide(
                                      color: orangelightColor,
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Grab it now',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 16,
                                left: 40,
                              ),
                              child: Image.asset(
                                'assets/man_icon.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 32,
                left: 18,
                right: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top Categories',
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
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoriesTile(
                    imageUrl: 'assets/category_one.png',
                    text: 'Stationary',
                  ),
                  CategoriesTile(
                    imageUrl: 'assets/category_two.png',
                    text: 'Electronic',
                  ),
                  CategoriesTile(
                    imageUrl: 'assets/category_three.png',
                    text: 'Houseware',
                  ),
                  CategoriesTile(
                    imageUrl: 'assets/category_four.png',
                    text: 'Collection',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 32,
                left: 18,
              ),
              child: Text(
                'Something You Like',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
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
                  )
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
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  top: 16,
                  bottom: 5,
                ),
                child: Image.asset(
                  'assets/navbar_homeon.png',
                  width: 16,
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
