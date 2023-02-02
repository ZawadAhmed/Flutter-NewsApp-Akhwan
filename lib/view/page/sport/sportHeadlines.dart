import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:newsportalmy/model/news.dart';
import 'package:newsportalmy/model/service/api_service.dart';
import 'package:newsportalmy/widget/newscategory.dart';
import 'package:newsportalmy/widget/shimmerLoading.dart';

class TopHeadlinesSport extends StatelessWidget {
  const TopHeadlinesSport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiService api = ApiService();

    return Container(
      child: FutureBuilder<List<News>>(
        future: api.fetchNewsSport(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("Error Fetching API"),
            );
          } else if (snapshot.hasData) {
            return TopHeadlinesList(news: snapshot.data!);
          }
          return const Center(
            child: ShimmerLoadingTopHead(),
          );
        },
      ),
    );
  }
}
