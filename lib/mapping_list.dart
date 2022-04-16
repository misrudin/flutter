import 'package:flutter/material.dart';

class MappingListView extends StatelessWidget {
  final List<Map<String, dynamic>> people = [
    {
      "name": "Misrudin",
      "age": 22,
      "colors": [
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue"
      ]
    },
    {
      "name": "Eka",
      "age": 22,
      "colors": ["Pink", "Orange", "Red"]
    },
    {
      "name": "Misrudin",
      "age": 22,
      "colors": [
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue"
      ]
    },
    {
      "name": "Eka",
      "age": 22,
      "colors": ["Pink", "Orange", "Red"]
    },
    {
      "name": "Misrudin",
      "age": 22,
      "colors": [
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue",
        "Red",
        "Green",
        "Blue"
      ]
    },
    {
      "name": "Eka",
      "age": 22,
      "colors": ["Pink", "Orange", "Red"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mapping List"),
        ),
        body: Container(
          color: Colors.black.withOpacity(0.001),
          child: ListView(
            children: people.map((data) {
              List colors = data['colors'];
              return Card(
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name : ${data['name']}"),
                                Text("Age  : ${data['age']}"),
                              ],
                            )
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: colors.map((color) {
                            return Container(
                              color: Colors.amber,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              padding: EdgeInsets.all(10),
                              child: Text(color.toString()),
                            );
                          }).toList()),
                        ),
                      ]),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
