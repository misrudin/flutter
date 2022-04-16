import 'package:flutter/material.dart';

class StateFullView extends StatefulWidget {
  @override
  State<StateFullView> createState() => _StateFullViewState();
}

class _StateFullViewState extends State<StateFullView> {
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
              style: TextStyle(
                  fontSize: 20 + double.parse(counter.toString()),
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (counter != 1) {
                        setState(() {
                          counter--;
                        });
                      }
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
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
