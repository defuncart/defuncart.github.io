import 'package:defuncart_github_io/models/music_act_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Ensure parameters correct', () {
    final musicActModel = MusicActModel(
      title: 'Title',
      relativeUrl: 'RelativeUrl',
      artworkPath: 'ArtworkPath',
      genres: ['A', 'B'],
    );
    expect(musicActModel.title, 'Title');
    expect(musicActModel.relativeUrl, 'RelativeUrl');
    expect(musicActModel.artworkPath, 'ArtworkPath');
    expect(musicActModel.genres, ['A', 'B']);
  });
}
