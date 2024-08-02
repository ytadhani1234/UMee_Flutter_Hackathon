import 'package:flutter/material.dart';
import 'package:flutter_newsfeed_project/post.dart';

class IconWidget extends StatefulWidget {
  final Post post;

  IconWidget(this.post);

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  // Method to toggle the like status and update the like count
  void _toggleLike() {
    setState(() {
      widget.post.isLiked = !widget.post.isLiked;
      widget.post.likeCount += widget.post.isLiked ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildLikeButton(),
       // _buildMoreButton(context),
      ],
    );
  }

  // Widget to build the like button with the like count
  Widget _buildLikeButton() {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            widget.post.isLiked ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
            color: widget.post.isLiked ? Color(0xff876b8c) : Colors.white,
          ),
          onPressed: _toggleLike,
        ),
        Text(
          '${widget.post.likeCount}',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}