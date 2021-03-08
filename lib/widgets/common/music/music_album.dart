import 'package:defuncart_github_io/models/music_album_model.dart';
import 'package:defuncart_github_io/widgets/common/images/clickable_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MusicAlbum extends StatelessWidget {
  const MusicAlbum({
    Key? key,
    required this.album,
  }) : super(key: key);

  final MusicAlbumModel album;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClickableImage(
          album.artworkUrl,
          width: 250,
          height: 250,
          onPressed: () => launch(album.redirectUrl),
          type: ClickableImageType.network,
        ),
        SizedBox(height: 4.0),
        Text(
          album.title,
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
