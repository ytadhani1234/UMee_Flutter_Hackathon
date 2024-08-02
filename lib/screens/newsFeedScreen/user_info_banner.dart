import 'package:flutter/material.dart';
import 'package:flutter_newsfeed_project/post.dart';
import 'package:flutter_newsfeed_project/user.dart';

class UserInfoBanner extends StatelessWidget {
  final User userForCard;

  UserInfoBanner(this.userForCard);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildProfileImage(),
        const SizedBox(width: 10.0),
        Text(
          userForCard.userName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileImage() {
    final profileImageUrl = userForCard.profileImageUrl;
    if (profileImageUrl.isEmpty) {
      return const CircleAvatar(
        radius: 50.0,
        child: Icon(Icons.person, size: 50.0),
      );
    } else {
      return CircleAvatar(
        backgroundImage: NetworkImage(profileImageUrl),
        radius: 50.0,
        onBackgroundImageError: (exception, stackTrace) {
          // If there's an error loading the image, show the person icon
          // return Icon(Icons.person, size: 50.0);
        },
        child: profileImageUrl.isEmpty ? Icon(Icons.person, size: 50.0) : null,
      );
    }
  }

}