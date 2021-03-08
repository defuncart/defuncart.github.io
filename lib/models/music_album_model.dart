class MusicAlbumModel {
  const MusicAlbumModel({
    required this.title,
    required this.description,
    required this.relativeUrl,
    required this.redirectUrl,
    required this.artworkPath,
  });

  final String title;
  final String description;
  final String relativeUrl;
  final String redirectUrl;
  final String artworkPath;
}
