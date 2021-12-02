import 'package:defuncart_github_io/models/music_album_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Ensure parameters correct', () {
    const musicAlbumModel = MusicAlbumModel(
      title: 'Title',
      description: 'Description',
      relativeUrl: 'RelativeUrl',
      redirectUrl: 'RedirectUrl',
      artworkPath: 'ArtworkPath',
    );
    expect(musicAlbumModel.title, 'Title');
    expect(musicAlbumModel.description, 'Description');
    expect(musicAlbumModel.relativeUrl, 'RelativeUrl');
    expect(musicAlbumModel.redirectUrl, 'RedirectUrl');
    expect(musicAlbumModel.artworkPath, 'ArtworkPath');
  });
}
