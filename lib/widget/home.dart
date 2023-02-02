import 'package:flutter/material.dart';
import 'package:newsportalmy/view/page/business/businessNews.dart';
import 'package:newsportalmy/widget/drawer.dart';
import 'package:newsportalmy/view/page/general/generalNews.dart';
import 'package:newsportalmy/view/page/technology/technologyNews.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // NewsList news = NewsList();
    // NewsHeadlines newsHeadlines = NewsHeadlines();
    Widget _TabBar = TabBar(
        isScrollable: true,
        unselectedLabelColor: Colors.blue,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.blue),
        tabs: <Widget>[
          Tab(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.blue)),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Text("General"),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.blue)),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Text("Technology"),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.blue)),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Text("Business"),
                ),
              ),
            ),
          ),
        ]);

    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to NewsPortal",
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      "MY",
                      style: const TextStyle(fontSize: 24, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              bottom: PreferredSize(
                preferredSize: Size(200.0, 52),
                child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: _TabBar),
              ),
              actions: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('images/icon_user.png')),
                ),
              ],
            ),
            backgroundColor: Colors.blueGrey,
            drawer: DrawerMenu(),
            body: TabBarView(
              children: <Widget>[
                GeneralNews(),
                TechnologyNews(),
                BusinessNews(),
              ],
            )));
  }
}
