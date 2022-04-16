import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget {
  final List<Widget> myList = [
    Container(
      width: 200,
      height: 300,
      color: Colors.red,
    ),
    Container(
      width: 200,
      height: 300,
      color: Colors.green,
    ),
    Container(
      width: 200,
      height: 300,
      color: Colors.blue,
    )
  ];

  final List<Color> myColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.lightBlue
  ];

  final List<Widget> myTexts = List.generate(
    100,
    (index) => Text("${index + 1}",
        style: TextStyle(fontSize: 20 + double.parse(index.toString()))),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Haloo"),
        ),
        // body: ListView.separated(
        //   separatorBuilder: (context, index) {
        //     return const Divider();
        //   },
        //   itemCount: myColors.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       width: 200,
        //       height: 300,
        //       color: myColors[index],
        //     );
        //   },
        // ),
        body: ListView(
          children: myTexts,
        ),
      ),
    );
  }
}
