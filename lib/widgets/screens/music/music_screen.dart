import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/images/clickable_image.dart';
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
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(WebsiteContent.music.content),
          SizedBox(height: 8.0),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              for (final act in WebsiteContent.music.acts)
                Column(
                  children: [
                    ClickableImage(
                      act.artworkPath,
                      width: 350,
                      height: 350,
                      onPressed: () => RoutePageManager.of(context).setNewRoutePath(act.relativeUrl),
                      type: ClickableImageType.network,
                    ),
                    SizedBox(height: 8.0),
                    Text(act.title),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
