import 'package:flutter/material.dart';
import 'package:newsportalmy/view/page/business/businessNews.dart';
import 'package:newsportalmy/view/page/sport/sportNews.dart';
import 'package:newsportalmy/widget/drawer.dart';
import 'package:newsportalmy/view/page/general/generalNews.dart';
import 'package:newsportalmy/view/page/technology/technology_News.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Widget _TabBar = TabBar(
        isScrollable: true,
        unselectedLabelColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.blue),
        tabs: <Widget>[
          Tab(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.blue)),
              child: const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
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
              child: const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
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
              child: const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Text("Business"),
                ),
              ),
            ),
          ),
          Tab(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                //border: Border.all(color: Colors.blue)
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Text("Sport"),
                ),
              ),
            ),
          ),
        ]);

    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text(
                  "NewsPortalMY",
                  style: TextStyle(fontSize: 24, color: Colors.blue),
                ),
              ),
              backgroundColor: const Color.fromARGB(222, 0, 21, 68),
              iconTheme: const IconThemeData(color: Colors.white),
              elevation: 0,
              bottom: PreferredSize(
                preferredSize: const Size(200.0, 52),
                child: Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    child: _TabBar),
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 182, 222, 255),
            drawer: const DrawerMenu(),
            body: const TabBarView(
              children: <Widget>[
                GeneralNews(),
                TechnologyNews(),
                BusinessNews(),
                SportNews()
              ],
            )));
  }
}
