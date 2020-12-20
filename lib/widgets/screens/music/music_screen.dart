import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/music/music_album.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  static const relativeUrl = '/music';

  const MusicScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Center(
        child: Wrap(
          spacing: 16.0,
          runSpacing: 16.0,
          children: [
            for (final album in WebsiteContent.music.albums) MusicAlbum(album: album),
          ],
        ),
      ),
    );
  }
}
