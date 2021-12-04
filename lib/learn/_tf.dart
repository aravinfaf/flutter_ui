import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TFexample extends StatefulWidget {
  _tfexample createState() => new _tfexample();
}

class _tfexample extends State<TFexample> {
  TextEditingController myusernamecontroller = TextEditingController();
  TextEditingController mypasswordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield Example"),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                maxLength: 5,
                controller: myusernamecontroller,
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    hintText: "Enter name"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                controller: mypasswordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter password"),
              ),
            ),
            RaisedButton(
                child: Text("Sign In"),
                textColor: Colors.white,
                color: Colors.blue,
                onPressed: () {
                  return showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Alert Message"),
                          content: Text(myusernamecontroller.text +
                              mypasswordcontroller.text),
                          actions: <Widget>[
                            new FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Ok"))
                          ],
                        );
                      });
                })
          ],
        ),
      ),
    );
  }
}
