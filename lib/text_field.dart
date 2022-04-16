import 'package:flutter/material.dart';

class TextFieldView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            autocorrect: false,
            autofocus: false,
          ),
        )),
      ),
    );
  }
}
