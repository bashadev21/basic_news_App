import 'package:flutter/material.dart';
import 'package:newsApp/Src/news.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'News App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Article> _articles = articles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
          children: _articles
              .map((articles) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ExpansionTile(
                      title: new Text(articles.text),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(
                                "${articles.comments} comments",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            IconButton(
                                icon: Icon(Icons.launch),
                                onPressed: () async {
                                  final fakeurl = "https://${articles.domain}";
                                  if (await canLaunch(fakeurl)) {
                                    launch(fakeurl);
                                  }
                                })
                          ],
                        ),
                      ],
                    ),
                  ))
              .toList()),
    );
  }
}
