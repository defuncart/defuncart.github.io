import 'package:defuncart_github_io/configs/styling.dart';
import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/models/music_act_model.dart';
import 'package:defuncart_github_io/widgets/common/gesture_detector/mouse_gesture_detector.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MusicScreen extends StatelessWidget {
  static const relativeUrl = '/music';

  const MusicScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(WebsiteContent.music.content),
          SizedBox(height: 16.0),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              for (final act in WebsiteContent.music.acts) Act(act: act),
            ],
          ),
        ],
      ),
    );
  }
}

class Act extends StatelessWidget {
  const Act({
    Key key,
    @required this.act,
  }) : super(key: key);

  final MusicActModel act;

  @override
  Widget build(BuildContext context) {
    return MouseGestureDetector(
      child: SizedBox(
        width: 375,
        child: Card(
          elevation: Styling.cardElevation,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  act.title,
                  style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Image.asset(
                  act.artworkPath,
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 16.0),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: [
                    for (final genre in act.genres)
                      Text(
                        genre,
                        style: TextStyle(
                          letterSpacing: -0.5,
                          color: Theme.of(context).disabledColor,
                        ),
                      )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () => RoutePageManager.of(context).setNewRoutePath(act.relativeUrl),
    );
  }
}
