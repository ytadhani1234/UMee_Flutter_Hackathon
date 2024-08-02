import 'package:flutter/material.dart';
import 'post.dart';
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
        body: ListView(
          children: [
            NewsPostCard(getPost('The Loneliness Paradox: Unmasking the Irony of Digital Connectivity')),
            NewsPostCard(getPost('Second Post')),
            NewsPostCard(getPost('Third Post'))
          ]
          )
    );
  }
  Post getPost(String title){
    return Post(
              user: User(
                userName: 'Johnny', profileImageUrl: ''),
              contentTitle: title,
              contentUrl: 'https://medium.com/umeeapp/the-loneliness-paradox-unmasking-the-irony-of-digital-connectivity-ee4641124cf4',
              // imageUrl: 'https://i1.sndcdn.com/artworks-000079767967-go8p1n-t500x500.jpg',
              imageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e4ae42cf-37e7-4b6e-a3bb-74b2d9c86031/deyp8ay-75feac34-a8e9-4142-bdd6-61ffae167519.png/v1/fill/w_1000,h_800,q_70,strp/monster_johnny___hotel_transylvania_by_alekun_uzumaky_deyp8ay-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyNCIsInBhdGgiOiJcL2ZcL2U0YWU0MmNmLTM3ZTctNGI2ZS1hM2JiLTc0YjJkOWM4NjAzMVwvZGV5cDhheS03NWZlYWMzNC1hOGU5LTQxNDItYmRkNi02MWZmYWUxNjc1MTkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.yzsexKFecTfu8_3rzA1jqdKYMh8RiPmUfbkTLX4tARY',
              timeStamp: DateTime.now(),
              likeCount: 10
              );
  }
}
