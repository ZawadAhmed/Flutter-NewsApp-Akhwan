class Article {
  String? id;
  String? title;
  String? date;
  String? author;
  String? urlArticle;
  String? description;

  String? get details => description;

  set details(String? details) {
    details = details;
  }

  String? image;

  String? get picture => image;

  set picture(String? image) {
    image = image;
  }

  Article(
      {this.author,
      this.date,
      this.description,
      this.id,
      this.image,
      this.title,
      this.urlArticle});
}
