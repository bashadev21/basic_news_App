class Article {
  final String text;
  final String domain;
  final String by;
  final String age;
  final int score;
  final int comments;

  const Article(
      {this.text, this.domain, this.by, this.age, this.score, this.comments});
}

final articles = [
  new Article(
      text: "Trump maintains a Chinese bank account, says NYT",
      domain: "www.bbc.com/news/business-54625422",
      by: "XYZ",
      age: "3 Hr",
      score: 1200,
      comments: 12343),
  new Article(
      text: "Elephant rescued from deep well in a 14-hour operation",
      domain: "www.bbc.com/news/av/world-55034537",
      by: "XYZ",
      age: "2 Hr",
      score: 1900,
      comments: 143),
  new Article(
      text: "Jochen Rindt: The F1 champion crowned beyond the grave",
      domain: "www.bbc.co.uk/sport/formula1/54973818",
      by: "XYZ",
      age: "1 Hr",
      score: 19000,
      comments: 1433),
];
