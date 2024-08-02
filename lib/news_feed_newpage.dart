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
            NewsPostCard(getPost())
            ],
          )
    );
  }

  Post getPost(){
    return Post(
              user: User(
                userName: 'Johnny', profileImageUrl: ''),
              contentTitle: 'The Loneliness Paradox: Unmasking the Irony of Digital Connectivity',
              contentUrl: 'https://medium.com/umeeapp/the-loneliness-paradox-unmasking-the-irony-of-digital-connectivity-ee4641124cf4',
              imageUrl: 'https://i1.sndcdn.com/artworks-000079767967-go8p1n-t500x500.jpg',
              timeStamp: DateTime.now(),
              likeCount: 10
              );
  }
}
