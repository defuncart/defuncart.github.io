import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../enums/category.dart';
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

  static const _mapCategoryIcon = {
    // Category.music: MdiIcons.musicClefTreble,
    // Category.music: Icons.music_note,
    Category.music: MdiIcons.headphones,
    Category.film: MdiIcons.filmstrip,
    Category.tech: Icons.code,
    Category.photography: MdiIcons.camera,
  };

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 250,
          height: 250,
          child: GestureDetector(
            onTap: () => print('Post ${post.runtimeType}'),
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
          ),
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: Icon(
              _mapCategoryIcon[post.category],
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

class TechPostTile extends StatelessWidget {
  const TechPostTile({
    Key key,
    @required this.post,
  }) : super(key: key);

  final TechPost post;

  @override
  Widget build(BuildContext context) {
    return CustomTile(
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
