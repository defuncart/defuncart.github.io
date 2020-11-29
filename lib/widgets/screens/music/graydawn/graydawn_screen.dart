import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/music/music_album.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';

class GrayDawnScreen extends StatelessWidget {
  static const relativeUrl = '/music/graydawn';

  const GrayDawnScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Column(
        children: [
          Text(WebsiteContent.music.grayDawn.content),
          SizedBox(height: 16.0),
          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: [
              for (final album in WebsiteContent.music.grayDawn.albums) MusicAlbum(album: album),
            ],
          ),
        ],
      ),
    );
  }
}
