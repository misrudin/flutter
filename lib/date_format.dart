import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Date Format"),
        ),
        body: Center(
            child: Text(
          DateFormat.yMMMMd().format(DateTime.now()),
          style: TextStyle(fontSize: 25),
        )),
      ),
    );
  }
}
