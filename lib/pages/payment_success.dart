// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/theme.dart';

class PaymentSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: navyColor,
      body: Column(
        children: [
          SizedBox(
            height: 167,
          ),
          Center(
            child: Image.asset(
              'assets/wallet_success.png',
              width: 209,
              height: 233,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'Payment Success',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'hoorayyy!! your payment was successful! \njust wait for it to arrive soon!',
            style: whiteTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 55,
          ),
          Container(
            width: 295,
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
                'Track Order Status',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Back to Home',
              style: yellowcreamTextStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
