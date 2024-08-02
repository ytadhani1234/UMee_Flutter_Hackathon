import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'post_provider.dart';
import 'screens/newsFeedScreen/news_post_card.dart';

//displays all the post from the postProvider
class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PostProvider>(
      builder: (context, postProvider, child) {
        return ListView.builder(
          itemCount: postProvider.getAllPosts.length,
          itemBuilder: (context, index) {
            return NewsPostCard(postProvider.getAllPosts[index]);
          },
        );
      },
    );
  }
}
