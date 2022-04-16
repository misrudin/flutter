import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

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
