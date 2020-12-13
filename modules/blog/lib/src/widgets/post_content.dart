import 'package:flutter/material.dart';

import '../models/film_post.dart';
import '../models/photography_post.dart';
import '../models/post.dart';

class PostContent extends StatelessWidget {
  const PostContent({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    if (post is FilmPost) {
      return FilmPostContent(post: post);
    } else if (post is PhotographyPost) {
      return PhotographyPostContent(post: post);
    }

    return Container();
  }
}

class FilmPostContent extends StatelessWidget {
  const FilmPostContent({
    Key key,
    @required this.post,
  }) : super(key: key);

  final FilmPost post;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Image.network(
        post.previewUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}

class PhotographyPostContent extends StatelessWidget {
  const PhotographyPostContent({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PhotographyPost post;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Image.network(
        post.url,
        fit: BoxFit.cover,
      ),
    );
  }
}
