import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardExample extends StatefulWidget {
  _cardstate createState() => new _cardstate();
}

class _cardstate extends State<CardExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            color: Colors.green,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album, size: 60),
                  title: Text(
                    "Aravindkumar Raj",
                    style: TextStyle(fontSize: 30.0),
                  ),
                  subtitle: Text(
                    "Best of AK music",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Play"),
                    ),
                    RaisedButton(
                        child: Text(
                      "Pause",
                      style: TextStyle(fontSize: 18.0),
                    ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
