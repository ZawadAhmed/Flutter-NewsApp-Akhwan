import 'package:flutter/material.dart';
// news models
import 'package:newsportalmy/model/news.dart';
// API
import 'package:newsportalmy/model/service/api_service.dart';
import 'package:http/http.dart' as http;
import 'package:newsportalmy/widget/newscategory.dart';
import 'package:newsportalmy/widget/shimmerLoading.dart';

class BreakNewsBusiness extends StatefulWidget {
  const BreakNewsBusiness({Key? key}) : super(key: key);

  @override
  _BreakNewsBusinessState createState() => _BreakNewsBusinessState();
}

class _BreakNewsBusinessState extends State<BreakNewsBusiness> {
  @override
  Widget build(BuildContext context) {
    ApiService api = ApiService();

    return Container(
      height: 270,
      child: FutureBuilder<List<News>>(
        future: api.fetchNewsBusiness(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Pengambilan Data API Error"),
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
