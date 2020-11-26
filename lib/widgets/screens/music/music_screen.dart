import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MusicScreen extends StatelessWidget {
  static const address = '/music';

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
                    ClickableImageAsset(
                      assetpath: act.artworkPath,
                      width: 350,
                      height: 350,
                      onPressed: () => RoutePageManager.of(context).setNewRoutePath(act.permalink),
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

class ClickableImageAsset extends StatelessWidget {
  const ClickableImageAsset({
    Key key,
    @required this.assetpath,
    @required this.width,
    @required this.height,
    @required this.onPressed,
  }) : super(key: key);

  final String assetpath;
  final double width;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Image.asset(
          assetpath,
          width: width,
          height: height,
        ),
        onTap: onPressed,
      ),
    );
  }
}
