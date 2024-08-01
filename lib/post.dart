import 'user.dart';

class Post {
  final User user;
  
  // final String postContentUrl;
  final String content;
  final String imageUrl;
  final DateTime timeStamp; //DateTime.now() --> for current time (https://api.dart.dev/stable/3.4.4/dart-core/DateTime-class.html)

  int likeCount;
  bool isLiked;

  Post({
    required this.user, 
    required this.content, 
    required this.imageUrl,
    required this.timeStamp,
    this.likeCount = 0,
    this.isLiked = false
    });

  User get getUser => user;
  String get getContent => content;
  String get getImageUrl => imageUrl;
  DateTime get getTimeStamp => timeStamp;
  int get getLikeCount => likeCount;
  bool get getIsLiked => isLiked;
}
