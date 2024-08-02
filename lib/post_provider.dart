// post_provider.dart
import 'package:flutter/material.dart';
import 'user.dart';
import 'post.dart';

class PostProvider with ChangeNotifier {
  final List<Post> _posts = [
    Post(
      user: User(
        userName: 'Umaar',
        profileImageUrl: 'n/a',
      ),
      contentTitle: 'The Loneliness Paradox: Unmasking the Irony of Digital Connectivity',
      contentUrl: 'https://medium.com/umeeapp/the-loneliness-paradox-unmasking-the-irony-of-digital-connectivity-ee4641124cf4',
      imageUrl: 'https://i1.sndcdn.com/artworks-000079767967-go8p1n-t500x500.jpg',
      timeStamp: DateTime.now(),
      likeCount: 10,
    ),
    Post(
      user: User(
        userName: 'Johnny',
        profileImageUrl: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/e4ae42cf-37e7-4b6e-a3bb-74b2d9c86031/deyp8ay-75feac34-a8e9-4142-bdd6-61ffae167519.png/v1/fill/w_1000,h_800,q_70,strp/monster_johnny___hotel_transylvania_by_alekun_uzumaky_deyp8ay-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAyNCIsInBhdGgiOiJcL2ZcL2U0YWU0MmNmLTM3ZTctNGI2ZS1hM2JiLTc0YjJkOWM4NjAzMVwvZGV5cDhheS03NWZlYWMzNC1hOGU5LTQxNDItYmRkNi02MWZmYWUxNjc1MTkucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.yzsexKFecTfu8_3rzA1jqdKYMh8RiPmUfbkTLX4tARY',
      ),
      contentTitle: 'I love this hotel',
      contentUrl: 'n/a',
      imageUrl: '',
      timeStamp: DateTime.now().subtract(Duration(days: 1)),
      likeCount: 20,
    ),
    Post(
      user: User(
        userName: 'Mavis',
        profileImageUrl: 'https://pbs.twimg.com/media/EnM6CVHWMAEYfME.jpg:large',
      ),
      contentTitle: 'Im a bat and I love birds',
      contentUrl: 'https://hoteltransylvania.fandom.com/wiki/Mavis_Dracula',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Eopsaltria_australis_-_Mogo_Campground.jpg/640px-Eopsaltria_australis_-_Mogo_Campground.jpg',
      timeStamp: DateTime.now().subtract(Duration(hours: 1)),
      likeCount: 5,
    ),
  ];

  List<Post> get getAllPosts => _posts;

  void addPost(Post post) {
    _posts.insert(0, post);
    notifyListeners();
  }

  void toggleLike(Post post) {
    post.likeCount += post.isLiked ? -1 : 1;
    post.isLiked = !post.isLiked;
    notifyListeners();
  }
}
