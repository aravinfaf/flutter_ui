import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridList extends StatefulWidget {
  _gridlist createState() => new _gridlist();
}

class _gridlist extends State<GridList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid List"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(choices.length, (index) {
          return Center(
            child: SelectCard(choice: choices[index]),
          );
        }),
      ),
    );
  }
}

class Choice {
  String title;
  IconData icon;
  Choice(this.title, this.icon);
}

List<Choice> choices = <Choice>[
  Choice("Home", Icons.home),
  Choice("Contact", Icons.contacts),
  Choice("Map", Icons.map),
  Choice("Phone", Icons.phone),
  Choice("Camera", Icons.home),
  Choice("Album", Icons.home),
  Choice("WiFi", Icons.home),
  Choice("GPS", Icons.home)
];

class SelectCard extends StatelessWidget {
  Choice choice;
  SelectCard({Key key, this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.lightGreenAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(choice.title, style: textStyle),
            Expanded(
                child: Icon(choice.icon, size: 50.0, color: textStyle.color)),
          ],
        ),
      ),
    );
  }
}
