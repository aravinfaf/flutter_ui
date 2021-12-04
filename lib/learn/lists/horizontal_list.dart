import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  _horizontallist createState() => new _horizontallist();
}

class _horizontallist extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal List"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 12.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 150.0,
              color: Colors.blue,
              child: new Stack(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.contacts),
                    title: Text("Contacts"),
                  )
                ],
              ),
            ),
            Container(
              width: 150.0,
              color: Colors.orange,
              child: new Stack(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text("Map"),
                  )
                ],
              ),
            ),
            Container(
              width: 150.0,
              color: Colors.grey,
              child: new Stack(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.album),
                    title: Text("Home"),
                  )
                ],
              ),
            ),
            Container(
              width: 148.0,
              color: Colors.amber,
              child: new Stack(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
