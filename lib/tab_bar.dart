import 'package:flutter/material.dart';

class TabBarViewTest extends StatelessWidget {
  List<Tab> tabs = [
    Tab(
      text: "Home",
      icon: Icon(Icons.home),
    ),
    Tab(
      text: "Chat",
      icon: Icon(Icons.chat),
    ),
    Tab(
      text: "Profile",
      icon: Icon(Icons.person),
    ),
    Tab(
      text: "Profile",
      icon: Icon(Icons.person),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 0,
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar"),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              // indicatorColor: Colors.amber,
              // indicatorWeight: 5,
              // indicatorPadding: EdgeInsets.all(10),
              indicator: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
                // border: Border(
                //     bottom: BorderSide(color: Colors.black, width: 3)
                //     )
              ),
              tabs: tabs,
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("Tab 1"),
            ),
            Center(
              child: Text("Tab 2"),
            ),
            Center(
              child: Text("Tab 3"),
            ),
            Center(
              child: Text("Tab 4"),
            ),
          ]),
        ),
      ),
    );
  }
}
