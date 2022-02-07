// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/theme.dart';

class CategoriesTile extends StatelessWidget {
  String imageUrl;
  String text;

  CategoriesTile({this.imageUrl, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: greendarkColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Image.asset(
              imageUrl,
              width: 24,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: whiteTextStyle.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
