import 'dart:math';

import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/music/music_album.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';
import 'package:iframes/iframes.dart';

class StrawberryComplexityScreen extends StatelessWidget {
  static const relativeUrl = '/music/strawberrycomplexity';

  const StrawberryComplexityScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: LayoutBuilder(
        builder: (_, constraints) {
          final width = min(constraints.maxWidth, MixcloudWidget.minWidth);

          return Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(WebsiteContent.music.strawberryComplexity.content),
              ),
              SizedBox(height: 16.0),
              Text(
                'DJ Sets',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 16.0),
              Wrap(
                spacing: 0.0,
                runSpacing: 0.0,
                children: [
                  for (final id in WebsiteContent.music.strawberryComplexity.mixcloudMixIds)
                    MixcloudWidget(
                      id: id,
                      width: width,
                    ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Releases',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 8.0),
              MusicAlbum(
                album: WebsiteContent.music.strawberryComplexity.albums.first,
              ),
            ],
          );
        },
      ),
    );
  }
}
