import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ScrollgridDashboard.dart';

class Verizon_Main extends StatefulWidget {
  _verizon_home createState() => new _verizon_home();
}

class _verizon_home extends State<Verizon_Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffffff),
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: ListView(shrinkWrap: true, children: [
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/images/vz_logo.png"),
                    width: 35,
                    height: 35,
                  ),
                  Text(
                    "Verizon Home",
                    style: TextStyle(
                        fontSize: 30,
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 20,
                width: 800,
              ),
              Container(
                height: 100,
                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.sync,
                          size: 30,
                          color: Colors.black,
                        ),
                        Text(
                          "339 Gb",
                          style: TextStyle(
                              fontSize: 30,
                              decoration: TextDecoration.none,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      color: Colors.grey,
                      height: 75,
                      width: 1,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(width: 50),
                            Icon(Icons.wifi, size: 20, color: Colors.black),
                            SizedBox(width: 10),
                            Text("216.119.143.101")
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.cloud_upload,
                                size: 20, color: Colors.black),
                            SizedBox(
                              width: 10,
                            ),
                            Text("70 mbps")
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.cloud_download,
                              size: 20,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("125 mbps")
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "YPUR HOME",
                        style: TextStyle(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Container(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Connected Devices",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w100),
                      ),
                      Expanded(
                          child: SizedBox(
                        height: 20.0,
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            ListTile(
                              leading: Icon(Icons.alarm),
                              title: Text("Alarm"),
                            ),
                            ListTile(
                              leading: Icon(Icons.android),
                              title: Text("Andrid"),
                            ),
                            ListTile(
                              leading: Icon(Icons.announcement),
                              title: Text("Announcement"),
                            ),
                            ListTile(
                              leading: Icon(Icons.apps),
                              title: Text("Apps"),
                            ),
                            ListTile(
                              leading: Icon(Icons.archive),
                              title: Text("Archive"),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              ScrollGridDashboard(),
            ],
          ),
        ]),
      ),
    );
  }
}
