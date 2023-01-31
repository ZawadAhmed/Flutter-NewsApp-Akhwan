import 'package:flutter/material.dart';
import '../widget/home.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 16,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  setState(
                    () {
                      currentScreen = Home();
                      currentTab = 0;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: currentTab == 0 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: currentTab == 0 ? Colors.blue : Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    /*currentScreen = ArticlesPage();
                    currentTab = 1; */
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.article,
                      color: currentTab == 1 ? Colors.blue : Colors.grey,
                    ),
                    Text(
                      "Articles",
                      style: TextStyle(
                          color: currentTab == 1 ? Colors.blue : Colors.grey),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
