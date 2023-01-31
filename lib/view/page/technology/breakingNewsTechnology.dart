import 'package:flutter/material.dart';
import 'package:newsportalmy/model/news.dart';
import 'package:newsportalmy/model/service/api_service.dart';
import 'package:newsportalmy/widget/newscategory.dart';
import 'package:http/http.dart' as http;
import 'package:newsportalmy/widget/shimmerLoading.dart';

class BreakNewsTechnology extends StatelessWidget {
  const BreakNewsTechnology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiService api = ApiService();

    return Container(
      height: 270,
      child: FutureBuilder<List<News>>(
        future: api.fetchNewsTechnology(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error Fetching API"),
            );
          } else if (snapshot.hasData) {
            return BreakNewsList(news: snapshot.data!);
          }
          return Center(
            child: ShimmerLoading(),
          );
        },
      ),
    );
  }
}
