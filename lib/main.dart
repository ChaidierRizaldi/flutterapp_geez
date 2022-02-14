// ignore_for_file: unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutterapp_geez1/pages/cart_page.dart';
import 'package:flutterapp_geez1/pages/detail_page.dart';
import 'package:flutterapp_geez1/pages/home_page.dart';
import 'package:flutterapp_geez1/pages/order_detail.dart';
import 'package:flutterapp_geez1/pages/payment_success.dart';
import 'package:flutterapp_geez1/pages/product_page.dart';
import 'package:flutterapp_geez1/pages/profile_page.dart';
import 'package:flutterapp_geez1/pages/search_page.dart';
import 'package:flutterapp_geez1/pages/started_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}
