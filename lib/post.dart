import 'user.dart';

class Post {
  final User user;
  
  // final String postContentUrl;
  final String contentTitle;
  final String contentUrl;
  final String imageUrl;
  final DateTime timeStamp; //DateTime.now() --> for current time (https://api.dart.dev/stable/3.4.4/dart-core/DateTime-class.html)

  int likeCount;
  bool isLiked;

  Post({
    required this.user, 
    required this.contentTitle, 
    required this.contentUrl,
    required this.imageUrl,
    required this.timeStamp,
    this.likeCount = 0,
    this.isLiked = false
    });

  User get getUser => user;
  String get getContentTitle => contentTitle;
  String get getContentUrl => contentUrl;
  String get getImageUrl => imageUrl;
  DateTime get getTimeStamp => timeStamp;
  int get getLikeCount => likeCount;
  bool get getIsLiked => isLiked;

  @override
  String toString() {
    return 'Post(user: ${user.userName}, contentTitle: $contentTitle, contentUrl: $contentUrl, imageUrl: $imageUrl, timeStamp: $timeStamp, likeCount: $likeCount, isLiked: $isLiked)';
  }
}
