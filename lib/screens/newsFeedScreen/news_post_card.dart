import 'package:flutter/material.dart';
import 'package:flutter_newsfeed_project/post.dart';
import 'user_info_banner.dart';
import 'content_info_widget.dart';
import 'icon_widget.dart';

class NewsPostCard extends StatelessWidget {
  final Post postForCard;

  NewsPostCard(this.postForCard);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      color: Color(0xff6c7588),
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:
          Padding(
            padding: const EdgeInsets.all(16.0), 
            child: Column(
              children: [
                UserInfoBanner(postForCard.getUser),
                SizedBox(height: 10.0),
                ContentInfoWidget(postForCard.contentTitle, postForCard.contentUrl, postForCard.imageUrl, postForCard.timeStamp),
                IconWidget(postForCard)
                ]
            )
            ),
    ));
  }

  // Widget to build user info (profile picture and username)
  Widget _buildUserInfo() {
    return Row(
      children: [
        _buildProfileImage(),
        const SizedBox(width: 10.0),
        Text(
          postForCard.getUser.userName,
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
    final profileImageUrl = postForCard.getUser.profileImageUrl;
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
