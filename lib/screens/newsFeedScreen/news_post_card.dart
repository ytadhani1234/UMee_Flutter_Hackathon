import 'package:flutter/material.dart';
import 'package:flutter_newsfeed_project/post.dart';


class NewsPostCard extends StatelessWidget {
  final Post post;

  NewsPostCard(this.post);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        color: Color(0xff6c7588),
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(post.getContent),
      )
    );
  }
}