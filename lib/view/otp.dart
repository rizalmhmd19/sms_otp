import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otp_2/main.dart';
import 'package:otp_2/var/variable.dart';

class Otp extends StatefulWidget {
  @override
  OtpState createState() => OtpState();
}

class OtpState extends State<Otp> {
  String otp = "";
  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();
  TextEditingController controller3 = new TextEditingController();
  TextEditingController controller4 = new TextEditingController();
  TextEditingController controller5 = new TextEditingController();

  TextEditingController currentctrl = new TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    controller5.dispose();
  }

  @override
  void initState() {
    super.initState();
    currentctrl = controller1;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [
      Padding(
        padding: EdgeInsets.only(left: 0.0, right: 2.0),
        child: new Container(
          color: Colors.transparent,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
        child: new Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border:
                new Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 0.1)),
            borderRadius: new BorderRadius.circular(4.0),
          ),
          child: new TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: controller1,
            autofocus: false,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
        child: new Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border:
                new Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 0.1)),
            borderRadius: new BorderRadius.circular(4.0),
          ),
          child: new TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: controller2,
            autofocus: false,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
        child: new Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border:
                new Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 0.1)),
            borderRadius: new BorderRadius.circular(4.0),
          ),
          child: new TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: controller3,
            autofocus: false,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
        child: new Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border:
                new Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 0.1)),
            borderRadius: new BorderRadius.circular(4.0),
          ),
          child: new TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: controller4,
            autofocus: false,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
        child: new Container(
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.1),
            border:
                new Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 0.1)),
            borderRadius: new BorderRadius.circular(4.0),
          ),
          child: new TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            enabled: false,
            controller: controller5,
            autofocus: false,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, color: Colors.black),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 2.0, right: 2.0),
        child: new Container(
          color: Colors.transparent,
        ),
      ),
    ];
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Enter OTP"),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Color(0xFFeaeaea),
      body: Container(
        child: Column(
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Verifying your number!",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 4.0, right: 16.0),
                    child: Text(
                      "Please type the verification code sent to",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 30.0, top: 2.0, right: 30.0),
                    child: Text(
                      "+62 $phone",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Image(
                      image: AssetImage('assets/images/otp-icon.png'),
                      height: 120.0,
                      width: 120.0,
                    ),
                  )
                ],
              ),
              flex: 90,
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GridView.count(
                      crossAxisCount: 7,
                      mainAxisSpacing: 10.0,
                      shrinkWrap: true,
                      primary: false,
                      scrollDirection: Axis.vertical,
                      children: List<Container>.generate(
                          7,
                          (int index) => Container(
                                child: widgetList[index],
                              )))
                ],
              ),
              flex: 20,
            ),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 16.0, right: 8.0, bottom: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              inputTextToField("1");
                            },
                            child: Text("1",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ),
                          MaterialButton(
                            onPressed: () {
                              inputTextToField("2");
                            },
                            child: Text("2",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ),
                          MaterialButton(
                            onPressed: () {
                              inputTextToField("3");
                            },
                            child: Text("3",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 4.0, right: 8.0, bottom: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              inputTextToField("4");
                            },
                            child: Text("4",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ),
                          MaterialButton(
                            onPressed: () {
                              inputTextToField("5");
                            },
                            child: Text("5",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ),
                          MaterialButton(
                            onPressed: () {
                              inputTextToField("6");
                            },
                            child: Text("6",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 4.0, right: 8.0, bottom: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              inputTextToField("7");
                            },
                            child: Text("7",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ),
                          MaterialButton(
                            onPressed: () {
                              inputTextToField("8");
                            },
                            child: Text("8",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ),
                          MaterialButton(
                            onPressed: () {
                              inputTextToField("9");
                            },
                            child: Text("9",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, top: 4.0, right: 8.0, bottom: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          MaterialButton(
                              onPressed: () {
                                deleteText();
                              },
                              child: Image.asset('assets/images/delete.png',
                                  width: 25.0, height: 25.0)),
                          MaterialButton(
                            onPressed: () {
                              inputTextToField("0");
                            },
                            child: Text("0",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center),
                          ),
                          MaterialButton(
                              onPressed: () {
                                matchOtp();
                                cekotp(otp);
                              },
                              child: Image.asset('assets/images/success.png',
                                  width: 25.0, height: 25.0)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              flex: 90,
            ),
          ],
        ),
      ),
    );
  }

  void inputTextToField(String str) {
    //Edit first textField
    if (currentctrl == controller1) {
      controller1.text = str;
      currentctrl = controller2;
    }

    //Edit second textField
    else if (currentctrl == controller2) {
      controller2.text = str;
      currentctrl = controller3;
    }

    //Edit third textField
    else if (currentctrl == controller3) {
      controller3.text = str;
      currentctrl = controller4;
    }

    //Edit fourth textField
    else if (currentctrl == controller4) {
      controller4.text = str;
      currentctrl = controller5;
    }

    //Edit sixth textField
    else if (currentctrl == controller5) {
      controller5.text = str;
      currentctrl = controller5;
    }
  }

  void deleteText() {
    if (currentctrl.text.length == 0) {
    } else {
      currentctrl.text = "";
      currentctrl = controller5;
      return;
    }

    if (currentctrl == controller1) {
      controller1.text = "";
    } else if (currentctrl == controller2) {
      controller1.text = "";
      currentctrl = controller1;
    } else if (currentctrl == controller3) {
      controller2.text = "";
      currentctrl = controller2;
    } else if (currentctrl == controller4) {
      controller3.text = "";
      currentctrl = controller3;
    } else if (currentctrl == controller5) {
      controller4.text = "";
      currentctrl = controller4;
    }
  }

  void cekotp(String str) {
    if (otp == "12345") {
      // showDialog(
      //     context: context,
      //     builder: (BuildContext context) {
      //       return AlertDialog(
      //         title: Text("Successfully"),
      //         actions: <Widget>[
      //           IconButton(
      //             icon: Icon(Icons.done),
      //             onPressed: () {
      //               Navigator.of(context).pop();
      //             },
      //           )
      //         ],
      //       );
      //     });
      Navigator.pushReplacementNamed(context, Dashboardscrn);
    } else {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Failed"),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.warning),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
  }

  void matchOtp() {
    otp = controller1.text +
        controller2.text +
        controller3.text +
        controller4.text +
        controller5.text;
  }
}
