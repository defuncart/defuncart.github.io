import 'package:flutter/material.dart';

import '../models/post.dart';
import 'post_content.dart';
import 'post_title.dart';

class PostsGrid extends StatelessWidget {
  const PostsGrid({
    Key key,
    @required this.posts,
  }) : super(key: key);

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        for (final post in posts)
          PostTile(
            title: post.title,
            content: PostContent(post: post),
            tags: post.tags,
          ),
      ],
    );
  }
}
