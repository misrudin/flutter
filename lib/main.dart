import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ExtractWidgetTest());
}

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

class ListTileTest extends StatelessWidget {
  const ListTileTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List Tile"),
        ),
        body: ListView(
          children: const [
            ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              title: Text("Misrudin"),
              subtitle: Text(
                "Front end developer sfsdfs sdjfksdjhf",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("10:00 AM"),
            ),
            Divider(),
            ListTile(
              title: Text("Misrudin"),
              subtitle: Text("Front end developer"),
              leading: CircleAvatar(),
              trailing: Text("10:00 AM"),
            ),
            Divider(),
            ListTile(
              title: Text("Misrudin"),
              subtitle: Text("Front end developer"),
              leading: CircleAvatar(),
              trailing: Text("10:00 AM"),
            ),
          ],
        ),
      ),
    );
  }
}

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

class ExtractWidgetTest extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Extract Widget"),
          ),
          body: ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.black12,
                );
              },
              itemBuilder: (context, index) {
                return ChatItem(
                  imageUrl: "https://picsum.photos/id/${index}/200/300",
                  title: faker.person.name(),
                  subTitle: faker.lorem.sentence(),
                );
              },
              itemCount: 100),
        ));
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;

  ChatItem({this.imageUrl = "", this.title = "", this.subTitle = ""});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
        backgroundColor: Colors.grey,
      ),
      title: Text(title),
      subtitle: Text(
        subTitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: const Text("05:00"),
    );
  }
}
