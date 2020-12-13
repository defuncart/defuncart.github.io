import 'package:flutter/material.dart';

import '../models/film_post.dart';
import '../models/music_post.dart';
import '../models/photography_post.dart';
import '../models/post.dart';
import '../models/tech_post.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    if (post is MusicPost) {
      return MusicPostWidget(post: post);
    } else if (post is FilmPost) {
      return FilmPostWidget(post: post);
    } else if (post is TechPost) {
      return TechPostWidget(post: post);
    } else if (post is PhotographyPost) {
      return PhotographyPostWidget(post: post);
    }

    return Container();
  }
}

class MusicPostWidget extends StatelessWidget {
  const MusicPostWidget({
    Key key,
    @required this.post,
  }) : super(key: key);

  final MusicPost post;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 300,
    //   height: 300,
    //   color: Color(0xffE8337E),
    //   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       Icon(
    //         Icons.music_note,
    //         size: 48.0,
    //       ),
    //       SizedBox(height: 4),
    //       Text(post.title),
    //       SizedBox(height: 4),
    //       Text('DJ Set'),
    //     ],
    //   ),
    // );
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
      width: 300,
      height: 300,
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

class FilmPostWidget extends StatelessWidget {
  const FilmPostWidget({
    Key key,
    @required this.post,
  }) : super(key: key);

  final FilmPost post;

  @override
  Widget build(BuildContext context) {
    return DisplayImage(
      // width: 400,
      // height: 225,
      width: 300,
      height: 300,
      url: post.previewUrl,
    );
  }
}

class TechPostWidget extends StatelessWidget {
  const TechPostWidget({
    Key key,
    @required this.post,
  }) : super(key: key);

  final TechPost post;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: 300,
    //   height: 300,
    //   color: Color(0xff337EE8),
    //   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       Icon(
    //         Icons.code,
    //         size: 48.0,
    //       ),
    //       SizedBox(height: 4),
    //       Text(
    //         post.title,
    //         style: Theme.of(context).textTheme.bodyText1,
    //       ),
    //       SizedBox(height: 4),
    //       Text(
    //         post.content,
    //         maxLines: 4,
    //         overflow: TextOverflow.ellipsis,
    //       ),
    //     ],
    //   ),
    // );
    return CustomTile(
      color: Color(0xff337EE8),
      icon: Icons.code,
      title: post.title,
      description: post.content,
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
