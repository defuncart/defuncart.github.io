import 'package:flutter/material.dart';

import '../models/film_post.dart';
import '../models/photography_post.dart';
import '../models/post.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    if (post is FilmPost) {
      return FilmPostWidget(post: post);
    } else if (post is PhotographyPost) {
      return PhotographyPostWidget(post: post);
    }

    return Container();
  }
}

class FilmPostWidget extends StatelessWidget {
  const FilmPostWidget({
    Key key,
    @required this.post,
  }) : super(key: key);

  final FilmPost post;

  @override
  Widget build(BuildContext context) {
    return DisplayImage(
      width: 400,
      height: 225,
      url: post.previewUrl,
    );
  }
}

class PhotographyPostWidget extends StatelessWidget {
  const PhotographyPostWidget({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PhotographyPost post;

  @override
  Widget build(BuildContext context) {
    return DisplayImage(
      width: 300,
      height: 300,
      url: post.url,
    );
  }
}

class DisplayImage extends StatelessWidget {
  const DisplayImage({
    Key key,
    @required this.url,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  final String url;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
