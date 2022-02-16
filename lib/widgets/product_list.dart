// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/detail_page.dart';
import 'package:flutterapp_geez1/theme.dart';

class ProductList extends StatelessWidget {
  String imageUrl;
  String name;
  String rating;
  String amount;
  String price;

  ProductList({this.imageUrl, this.name, this.rating, this.amount, this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => DetailPage(),
                transitionDuration: Duration(seconds: 0),
              ),
            );
          },
          child: Container(
            width: 164,
            height: 270,
            decoration: BoxDecoration(
              color: greendarkColor,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imageUrl,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                      left: 16,
                      right: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          style: whiteTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              rating,
                              width: 88,
                              height: 16,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              amount,
                              style: whiteTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          price,
                          style: whiteTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
