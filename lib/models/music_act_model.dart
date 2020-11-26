import 'package:meta/meta.dart';

class MusicActModel {
  const MusicActModel({
    @required this.title,
    @required this.relativeUrl,
    @required this.artworkPath,
    String url,
  });

  final String title;
  final String relativeUrl;
  final String artworkPath;
}
