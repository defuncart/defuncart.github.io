import 'package:defuncart_github_io/models/music_act_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Ensure parameters correct', () {
    final musicActModel = MusicActModel(
      title: 'Title',
      permalink: 'Permalink',
      artworkPath: 'artworkPath',
    );
    expect(musicActModel.title, 'Title');
    expect(musicActModel.permalink, 'Permalink');
    expect(musicActModel.artworkPath, 'artworkPath');
  });
}
