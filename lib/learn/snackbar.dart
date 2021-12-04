import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackbarExample extends StatefulWidget {
  _snackbarexample createState() => _snackbarexample();
}

class _snackbarexample extends State<StatefulWidget> {
  var list = List<String>.generate(20, (index) => "List : $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Snackbar"),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(list[index]),
            trailing: Container(
              width: 60,
              child: FlatButton(
                child: Icon(Icons.delete, color: Colors.grey),
                onPressed: () {
                  showSnackbar(context, index);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  void showSnackbar(BuildContext context, int index) {
    var deleteRecord = list[index];
    setState(() {
      list.removeAt(index);
    });

    SnackBar snackBar = SnackBar(
      content: Text("Deleted $deleteRecord"),
      action: SnackBarAction(
        label: "Undo",
        onPressed: () {
          setState(() {
            list.insert(index, deleteRecord);
          });
        },
      ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
