import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Imge Widget"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            // child: const Image(image: AssetImage("images/hero2.jpg")),
            child: const Image(
                image: NetworkImage("https://picsum.photos/350/500")),
          ),
        ),
      ),
    );
  }
}
