import 'package:flutter/material.dart';

import 'post.dart';

class PostProvider with ChangeNotifier {
  final List<Post> posts = [
    Post(
      userName:  'John Doe',
      content:  'First post',
      imageUrl: '',
      timeStamp: DateTime.now().subtract(Duration(days: 1)),
      likeCount: 20
    ),
    Post(
      userName: 'Raj Pal',
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