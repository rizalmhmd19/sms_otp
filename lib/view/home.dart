import 'package:flutter/material.dart';
import 'package:otp_2/var/variable.dart';
import 'package:otp_2/main.dart';

import '../main.dart';

class Home extends StatelessWidget {
  TextEditingController phonectrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "Enter Phone Number",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Color(0xFFeaeaea),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 25.0, right: 16.0),
                child: Text(
                  "Enter your phone number",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0, bottom: 35.0),
                child: Image(
                  image: AssetImage('assets/images/otp-icon.png'),
                  height: 150,
                  width: 150,
                ),
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    child: new Container(),
                    flex: 2,
                  ),
                  Flexible(
                    child: new TextFormField(
                      textAlign: TextAlign.center,
                      autofocus: false,
                      enabled: false,
                      initialValue: "+62",
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                    flex: 2,
                  ),
                  Flexible(
                    child: new Container(),
                    flex: 1,
                  ),
                  Flexible(
                    child: new TextFormField(
                      textAlign: TextAlign.start,
                      autofocus: true,
                      enabled: true,
                      controller: phonectrl,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.done,
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                    flex: 8,
                  ),
                  Flexible(
                    child: new Container(),
                    flex: 2,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                child: new Container(
                  width: 150.0,
                  height: 50.0,
                  child: new RaisedButton(
                    onPressed: () {
                      phone = phonectrl.text;
                      Navigator.of(context).pushNamed(Otpscreen);
                    },
                    child: Text("Send OTP"),
                    textColor: Colors.white,
                    color: Colors.green,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
