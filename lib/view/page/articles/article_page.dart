//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Articles",
          style:
              TextStyle(color: Colors.blue[700], fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 0),
            child: IconButton(
                onPressed: () {}, icon: Image.asset('images/icon_user.png')),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}
