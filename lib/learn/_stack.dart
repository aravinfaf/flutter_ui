import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  _stackexample createState() => new _stackexample();
}

class _stackexample extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Stack(
          fit: StackFit.passthrough,
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              width: 400,
              height: 300,
              color: Colors.green,
              child: Center(
                child: Center(
                  child: Text(
                    "Top Widget",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 30,
                right: 20,
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "Middle Widget",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                )),
            Positioned(
              top: 30,
              left: 20,
              child: Container(
                height: 100,
                width: 150,
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "Bottom Widget",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
