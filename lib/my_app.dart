import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column"),
        ),
        body: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            Container(
              height: 300,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 50,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
