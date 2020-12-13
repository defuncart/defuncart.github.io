import 'package:flutter/material.dart';

import '../models/film_post.dart';
import '../models/music_post.dart';
import '../models/photography_post.dart';
import '../models/post.dart';
import '../models/tech_post.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: Builder(
        builder: (_) {
          if (post is MusicPost) {
            return MusicPostTile(post: post);
          } else if (post is FilmPost) {
            return FilmPostTile(post: post);
          } else if (post is TechPost) {
            return TechPostTile(post: post);
          } else if (post is PhotographyPost) {
            return PhotographyPostTile(post: post);
          }

          return Container();
        },
      ),
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
      color: Color(0xffE8337E),
      icon: Icons.music_note,
      title: post.title,
      description: post.description,
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key key,
    @required this.color,
    @required this.icon,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            size: 48.0,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          ),
          Text(
            description,
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

class TechPostTile extends StatelessWidget {
  const TechPostTile({
    Key key,
    @required this.post,
  }) : super(key: key);

  final TechPost post;

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      color: Color(0xff337EE8),
      icon: Icons.code,
      title: post.title,
      description: post.content,
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
