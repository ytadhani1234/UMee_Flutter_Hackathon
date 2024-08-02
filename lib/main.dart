import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'post_provider.dart';
import 'news_feed_newpage.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return PostProvider();
      },
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News Feed App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: NewsFeedNewPage(),
    );
  }
}