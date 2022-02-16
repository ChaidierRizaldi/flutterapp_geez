// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/theme.dart';

class FormTile extends StatelessWidget {
  String text;
  String hinText;

  FormTile({this.text, this.hinText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: whiteTextStyle,
        ),
        SizedBox(
          height: 12,
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
              hintText: hinText,
              hintStyle: greyTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
