import 'package:flutter/cupertino.dart';

class SecondScreen extends StatefulWidget {
  _secondscreen createState() => new _secondscreen();
}

class _secondscreen extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Second Screen",
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    );
  }
}
