import 'package:flutter/material.dart';

class StateLessView extends StatelessWidget {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("StateLess"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (counter != 1) {
                        counter--;
                      }
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      counter++;
                    },
                    child: Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
    );
  }
}
