import 'package:flutter/material.dart';
import 'post_list.dart';
import 'screens/addPostScreen/add_post_page.dart';

class NewsFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191c20),
      appBar: AppBar(
        title: Text("News Feed App"),
        backgroundColor: Color(0xff876b8c),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddPostPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: PostList(),
    );
  }
}

