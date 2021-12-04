import 'package:flutter/material.dart';
import 'learn/bottombar/MyBottomBarDemo.dart';
import 'learn/lists/long_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomBarDemo(),
    );
  }

  // ======> Tab Exmple <=====
  //
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: DefaultTabController(
  //       length: 2,
  //       child: Scaffold(
  //         appBar: AppBar(
  //           title: Text("Flutter Tab"),
  //           bottom: TabBar(
  //             tabs: [
  //               Tab(icon: Icon(Icons.home), text: "Tab 1"),
  //               Tab(
  //                 icon: Icon(Icons.star),
  //                 text: "Tab 2",
  //               )
  //             ],
  //           ),
  //         ),
  //         body: TabBarView(
  //           children: [FirstScreen(), SecondScreen()],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
