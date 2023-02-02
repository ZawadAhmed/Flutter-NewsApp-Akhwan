import 'package:flutter/material.dart';
import 'package:newsportalmy/view/page/business/breakingNewsBusiness.dart';
import 'package:newsportalmy/view/page/business/topHeadlinesBusiness.dart';

class BusinessNews extends StatelessWidget {
  const BusinessNews({Key? key}) : super(key: key);

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
                      color: Color.fromARGB(255, 168, 11, 0)),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const BreakNewsBusiness(),
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
              const TopHeadlinesBusiness()
            ],
          ),
        ));
  }
}
