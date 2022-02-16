// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/cart_page.dart';
import 'package:flutterapp_geez1/pages/home_page.dart';
import 'package:flutterapp_geez1/pages/order_detail.dart';
import 'package:flutterapp_geez1/theme.dart';
import 'package:flutterapp_geez1/widgets/product_list.dart';
import 'package:flutterapp_geez1/widgets/variations_tile.dart';

class DetailPage extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
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
            Image.asset(
              'assets/product_two.png',
              width: 375,
              height: 387,
            ),
            Image.asset(
              'assets/two_circle.png',
              width: 28,
              height: 10,
              color: yellowcreamColor,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 34,
                left: 18,
                right: 18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nike Air Force X-AC Girl Style',
                    style: whiteTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/star_icon.png',
                        width: 88,
                        height: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '(16)',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp1.650.000',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Rp3.850.000',
                        style: greyTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    'Choose Variations',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 59,
                        height: 59,
                        decoration: BoxDecoration(
                          color: greendarkColor,
                          border: Border(
                            left: BorderSide(
                              color: yellowcreamColor,
                            ),
                            top: BorderSide(
                              color: yellowcreamColor,
                            ),
                            right: BorderSide(
                              color: yellowcreamColor,
                            ),
                            bottom: BorderSide(
                              color: yellowcreamColor,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '36',
                              style: whiteTextStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      VariationsTile(
                        number: '37',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      VariationsTile(
                        number: '38',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      VariationsTile(
                        number: '39',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      VariationsTile(
                        number: '40',
                      ),
                      SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'This shoes material is canvas press with foam \nmat, bring back your high school moment with \nthis shoes. Choose your size and just wait for it.',
                        style: whiteTextStyle,
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Text(
                        'Related Products',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductList(
                            imageUrl: 'assets/product_eight.png',
                            name: 'Nike Yeezy T-2034',
                            rating: 'assets/star_icon.png',
                            amount: '(30)',
                            price: 'Rp1.237.000',
                          ),
                          ProductList(
                            imageUrl: 'assets/product_nine.png',
                            name: 'Nike P-Y671 Excellent',
                            rating: 'assets/star_icon.png',
                            amount: '(53)',
                            price: 'Rp4.225.000',
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
                            imageUrl: 'assets/product_ten.png',
                            name: 'Nike Kenzy Nicromenom',
                            rating: 'assets/star_icon.png',
                            amount: '(150)',
                            price: 'Rp659.000',
                          ),
                          ProductList(
                            imageUrl: 'assets/product_eleven.png',
                            name: 'Nike Air Force X Super',
                            rating: 'assets/star_icon.png',
                            amount: '(10)',
                            price: 'Rp1.800.000',
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
                      SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 4,
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: navyColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 16,
                ),
                child: Text(
                  'Rp6.150.000',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 25,
                ),
                child: Image.asset(
                  'assets/checkout_product.png',
                  width: 34,
                  height: 32,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  right: 16,
                ),
                child: Container(
                  width: 153,
                  height: 47,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: navylightColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              OrderDetail(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    },
                    child: Text(
                      'Buy Now',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
