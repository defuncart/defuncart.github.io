import 'package:flutter/material.dart';

import '../models/post.dart';
import 'post_widget.dart';

class PostsGrid extends StatelessWidget {
  const PostsGrid({
    Key? key,
    required this.posts,
  }) : super(key: key);

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            for (final post in posts) PostTile(post: post),
          ],
        );
      },
    );
  }
}
