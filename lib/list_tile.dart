import 'package:flutter/material.dart';

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
