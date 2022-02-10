// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/theme.dart';

class NotificationTile extends StatelessWidget {
  String title;
  String text;
  String imageUrl;
  String time;

  NotificationTile({this.title, this.text, this.imageUrl, this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: yellowcreamTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
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
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 16,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    time,
                    style: greyTextStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Divider(
          color: greyColor,
          thickness: 1,
        ),
      ],
    );
  }
}
