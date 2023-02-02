import 'package:flutter/material.dart';
import 'package:newsportalmy/view/page/technology/breakingnews_technology.dart';
import 'package:newsportalmy/view/page/technology/top_headlines.dart';

class TechnologyNews extends StatelessWidget {
  const TechnologyNews({Key? key}) : super(key: key);

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
              const BreakNewsTechnology(),
              const SizedBox(
                height: 24,
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: const Text(
                  'Top Headlines',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TopHeadlinesTechnology()
            ],
          ),
        ));
  }
}
