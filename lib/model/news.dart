// ignore_for_file: prefer_if_null_operators

class News {
  String author;
  String title;
  String image;
  String published;
  String content;
  String url;
  String source;

  News(
      {required this.author,
      required this.title,
      required this.image,
      required this.published,
      required this.content,
      required this.url,
      required this.source});

  factory News.fromJson(Map<String, dynamic> json) {
    var imageUrl = "";
    return News(
        author: json['author'] == null ? "" : json['author'],
        title: json['title'] == null ? "" : json['title'],
        image: json['urlToImage'] == null ? imageUrl : json['urlToImage'],
        published: json['publishedAt'] == null ? "" : json['publishedAt'],
        content: json['content'] == null ? "" : json['content'],
        url: json['url'] == null ? "" : json['url'],
        source: json['source']['name']);
  }
}
