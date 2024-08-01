import 'package:flutter/material.dart';
import 'user.dart';

import 'post.dart';

class PostProvider with ChangeNotifier {
  final List<Post> posts = [
    Post(
      user:  User(
        userName: 'Johnny',
        profileImageUrl: 'https://assets.mycast.io/posters/jonathan-loughran-spin-off-fan-casting-poster-276608-large.jpg?1672960291'
        ),
      content:  'First post',
      imageUrl: '',
      timeStamp: DateTime.now().subtract(Duration(days: 1)),
      likeCount: 20
    ),
    Post(
      user: User(
        userName: 'Mavis',
        profileImageUrl: 'https://i.pinimg.com/originals/5d/06/03/5d0603a8adca0f722407f393b3af7611.png'
        ),
      content: 'Second post',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Eopsaltria_australis_-_Mogo_Campground.jpg/640px-Eopsaltria_australis_-_Mogo_Campground.jpg',
      timeStamp: DateTime.now().subtract(Duration(hours: 1)),
      likeCount: 5
      )
  ]; 

  List<Post> get allposts{
    return posts;
  }

  //changes isLiked from false to true and vice versa
  void toggleLike(Post post){
    post.likeCount += post.isLiked ? -1 : 1;
    post.isLiked = !post.isLiked;
    notifyListeners();
  }
}