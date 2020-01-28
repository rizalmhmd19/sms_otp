import 'package:flutter/material.dart';
import 'package:otp_2/view/home.dart';
import 'package:otp_2/var/variable.dart';
import 'package:otp_2/view/otp.dart';
import 'package:otp_2/view/dashboard.dart';

String phone = "";
void main() => runApp(new MaterialApp(
      home: new Home(),
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryColorDark: Colors.brown, primaryColor: Colors.green),
      routes: <String, WidgetBuilder>{
        Homescreen: (BuildContext context) => new Home(),
        Otpscreen: (BuildContext context) => new Otp(),
        Dashboardscrn: (BuildContext context) => new Dashboard(),
      },
    ));
