import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LongList extends StatefulWidget {
  _longlist createState() => new _longlist();
}

class _longlist extends State<LongList> {
  var productlis = List.generate(500, (i) => "Product List $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Long List"),
      ),
      body: ListView.builder(
          itemCount: productlis.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${productlis[index]}"),
            );
          }),
    );
  }
}
