import 'package:flutter/cupertino.dart';

class FirstScreen extends StatefulWidget {
  _firstscreen createState() => new _firstscreen();
}

class _firstscreen extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "First Screen",
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    );
  }
}
