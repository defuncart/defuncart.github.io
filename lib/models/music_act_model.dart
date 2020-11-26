import 'package:meta/meta.dart';

class MusicActModel {
  const MusicActModel({
    @required this.title,
    @required this.permalink,
    @required this.artworkPath,
    String url,
  });

  final String title;
  final String permalink;
  final String artworkPath;
}
