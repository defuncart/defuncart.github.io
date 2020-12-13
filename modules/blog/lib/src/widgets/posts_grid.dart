import 'package:blog/src/widgets/post_widget.dart';
import 'package:flutter/material.dart';

import '../models/post.dart';

class PostsGrid extends StatelessWidget {
  const PostsGrid({
    Key key,
    @required this.posts,
  }) : super(key: key);

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        print(constraints);
        return Wrap(
          spacing: 8.0,
          runSpacing: 8.0,
          children: [
            for (final post in posts) PostWidget(post: post),
          ],
        );
      },
    );
  }
}
