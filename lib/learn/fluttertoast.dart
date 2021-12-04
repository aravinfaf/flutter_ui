import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToast extends StatefulWidget {
  _fluttertoast createState() => new _fluttertoast();
}

class _fluttertoast extends State<FlutterToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast Example"),
      ),
      body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Center(
            child:
                RaisedButton(child: Text("Show Toast"), onPressed: showToast),
          )),
    );
  }
}

void showToast() {
  Fluttertoast.showToast(
      msg: "Hi I'm Toast",
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIos: 4,
      textColor: Colors.yellow,
      backgroundColor: Colors.orange);
}
