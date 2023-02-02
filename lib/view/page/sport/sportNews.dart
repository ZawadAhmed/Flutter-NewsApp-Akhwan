import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:newsportalmy/view/page/sport/sportHeadlines.dart';

import 'breakingnewsSport.dart';

class SportNews extends StatelessWidget {
  const SportNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: const Text(
                  'Breaking News',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const BreakNewsSport(),
              const SizedBox(
                height: 24,
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: Text(
                  'Top Headlines',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#4E3A55')),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TopHeadlinesSport()
            ],
          ),
        ));
  }
}
