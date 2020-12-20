import 'package:flutter/material.dart';
import 'package:iframes/iframes.dart';

import '../enums/category.dart';
import '../models/film_post.dart';
import '../models/music_post.dart';
import '../models/photography_post.dart';
import '../models/post.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 250,
          height: 250,
          child: GestureDetector(
            onTap: () => showDetailPopup(context, post),
            child: Builder(
              builder: (_) {
                if (post is MusicPost) {
                  return MusicPostTile(post: post);
                } else if (post is FilmPost) {
                  return FilmPostTile(post: post);
                } else if (post is PhotographyPost) {
                  return PhotographyPostTile(post: post);
                }

                return Container();
              },
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: Icon(
              post.category.icon,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ],
    );
  }
}

class MusicPostTile extends StatelessWidget {
  const MusicPostTile({
    Key key,
    @required this.post,
  }) : super(key: key);

  final MusicPost post;

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      title: post.title,
      description: post.description,
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key key,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: color,
      color: const Color(0xff337EE8),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6.apply(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
            textAlign: TextAlign.center,
          ),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyText2.apply(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class FilmPostTile extends StatelessWidget {
  const FilmPostTile({
    Key key,
    @required this.post,
  }) : super(key: key);

  final FilmPost post;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      post.previewUrl,
      fit: BoxFit.cover,
    );
  }
}

class PhotographyPostTile extends StatelessWidget {
  const PhotographyPostTile({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PhotographyPost post;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      post.url,
      fit: BoxFit.cover,
    );
  }
}

void showDetailPopup(BuildContext context, Post post) => showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: DetailContent(post: post),
        contentPadding: const EdgeInsets.all(8.0),
      ),
    );

class DetailContent extends StatelessWidget {
  const DetailContent({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (_) {
        if (post is MusicPost) {
          return MusicDetailContent(post: post);
        } else if (post is FilmPost) {
          return FilmDetailContent(post: post);
        } else if (post is PhotographyPost) {
          return PhotographyDetailContent(post: post);
        }

        return Container();
      },
    );
  }
}

class MusicDetailContent extends StatelessWidget {
  const MusicDetailContent({
    Key key,
    @required this.post,
  }) : super(key: key);

  final MusicPost post;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.85;
    return MixcloudWidget(
      id: post.id,
      width: width,
    );
  }
}

class FilmDetailContent extends StatelessWidget {
  const FilmDetailContent({
    Key key,
    @required this.post,
  }) : super(key: key);

  final FilmPost post;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.85;
    final height = width / 16.0 * 9.0;
    return VimeoWidget(
      id: post.id,
      width: width,
      height: height,
    );
  }
}

class PhotographyDetailContent extends StatelessWidget {
  const PhotographyDetailContent({
    Key key,
    @required this.post,
  }) : super(key: key);

  final PhotographyPost post;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      post.url,
      fit: BoxFit.contain,
    );
  }
}
