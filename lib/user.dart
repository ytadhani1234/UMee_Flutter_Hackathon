class User {
  final String userName;
  final String profileImageUrl;

  User({
    required this.userName, 
    required this.profileImageUrl
    });

    String get getUserName => userName;
    String get getProfileImageUrl => profileImageUrl;
}