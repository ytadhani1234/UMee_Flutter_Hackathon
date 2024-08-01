import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'post.dart';
// import '../../post_provider.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'screens/newsFeedScreen/news_post_card.dart';
import 'package:flutter_newsfeed_project/user.dart';

class NewsFeedNewPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff191c20),
        appBar: AppBar(
          title: Text("NewsFeedNewPage"),
          backgroundColor: Color(0xff876b8c),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NewsPostCard(getPost(''))
            ],
          )
    );
        
  }

  Post getPost(String ran){
    return Post(
              user: User(userName: 'Johnny', profileImageUrl: 'https://assets.mycast.io/posters/jonathan-loughran-spin-off-fan-casting-poster-276608-large.jpg?1672960291'),
              content: 'Hotel Trans Reporting First Post',
              imageUrl: 'https://i.pinimg.com/originals/5d/06/03/5d0603a8adca0f722407f393b3af7611.png',
              timeStamp: DateTime.now(),
              likeCount: 10
              );
  }
}
