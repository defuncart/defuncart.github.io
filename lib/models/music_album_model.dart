import 'package:meta/meta.dart';

class MusicAlbumModel {
  const MusicAlbumModel({
    @required this.title,
    @required this.description,
    @required this.permalink,
    @required this.redirectUrl,
    @required this.artworkUrl,
    String url,
  });

  final String title;
  final String description;
  final String permalink;
  final String redirectUrl;
  final String artworkUrl;
}
