import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicList extends StatefulWidget {
  _basic_list createState() => new _basic_list();
}

class _basic_list extends State<BasicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic List"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text("Map"),
          ),
          ListTile(
            leading: Icon(Icons.album),
            title: Text("Album"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text("Contacts"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          )
        ],
      ),
    );
  }
}
