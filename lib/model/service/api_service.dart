// ignore_for_file: prefer_final_fields

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsportalmy/model/news.dart';

//API Call from newsapi.org

class ApiService {
  late String _category;
  String _country = "my";
  String _apiKey2 = "ddf3223b0d1d4b4fa3d3cf7b76d0c383";
  String _baseUrl = "https://newsapi.org/v2/";

  List<News> parseNews(String responseBody) {
    final parsed = jsonDecode(responseBody);
    final jsonObject = (parsed as Map<String, dynamic>)["articles"];
    return jsonObject.map<News>((json) => News.fromJson(json)).toList();
  }

  // Fetch News General
  Future<List<News>> fetchNewsGeneral(http.Client client) async {
    _category = "general";
    final response = await client.get(Uri.parse(
        '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey2'));
    return parseNews(response.body);
  }

  // Fetch News Sport
  Future<List<News>> fetchNewsSport(http.Client client) async {
    _category = "sport";
    final response = await client.get(Uri.parse(
        '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey2'));
    return parseNews(response.body);
  }

  // Fetch News Business
  Future<List<News>> fetchNewsBusiness(http.Client client) async {
    _category = "business";
    final response = await client.get(Uri.parse(
        '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey2'));
    return parseNews(response.body);
  }

  // Fetch News Technology
  Future<List<News>> fetchNewsTechnology(http.Client client) async {
    _category = "technology";
    final response = await client.get(Uri.parse(
        '${_baseUrl}top-headlines?country=$_country&category=$_category&apiKey=$_apiKey2'));
    return parseNews(response.body);
  }
}
