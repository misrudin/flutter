import 'package:flutter/material.dart';

class AppBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
        leading: Container(color: Colors.amber),
        leadingWidth: 30,
        title: Container(
          // width: 100,
          height: 30,
          color: Colors.red,
        ),
        centerTitle: false,
        // titleSpacing: 0,
        actions: [
          Container(
            width: 35,
            color: Colors.purple,
          ),
          Container(
            width: 35,
            color: Colors.pink,
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: Container(
            width: 50,
            height: 50,
            color: Colors.pink,
          ),
        ),
        flexibleSpace: Container(
          height: 200,
          color: Colors.green,
        ),
      )),
    );
  }
}
