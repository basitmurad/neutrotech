import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neutrotech/screens/authentication/AuthenticationScreen.dart';
import 'package:neutrotech/screens/authentication/TabBarViewWidget.dart';
import 'package:neutrotech/screens/authentication/TabBarWidget.dart';
import 'package:neutrotech/screens/dashboard/DashboardScreen.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tab Layout with TextFields',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

