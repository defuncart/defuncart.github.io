import 'package:defuncart_github_io/models/app_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Ensure parameters correct', () {
    final musicAlbumModel = AppModel(
      title: 'Title',
      description: 'Description',
      icon: 'Icon',
      relativeUrl: 'RelativeUrl',
    );
    expect(musicAlbumModel.title, 'Title');
    expect(musicAlbumModel.description, 'Description');
    expect(musicAlbumModel.icon, 'Icon');
    expect(musicAlbumModel.relativeUrl, 'RelativeUrl');
  });

  test('PlatformsModel.all() constructor', () {
    final platformsModel = PlatformsModel.all();
    expect(platformsModel.ios, isTrue);
    expect(platformsModel.android, isTrue);
  });

  test('PlatformsModel.ios() constructor', () {
    final platformsModel = PlatformsModel.ios();
    expect(platformsModel.ios, isTrue);
    expect(platformsModel.android, isFalse);
  });

  test('PlatformsModel.android() constructor', () {
    final platformsModel = PlatformsModel.android();
    expect(platformsModel.ios, isFalse);
    expect(platformsModel.android, isTrue);
  });
}
