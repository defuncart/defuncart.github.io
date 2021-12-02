import 'package:defuncart_github_io/models/app_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Ensure parameters correct', () {
    const musicAlbumModel = AppModel(
      title: 'Title',
      description: 'Description',
      icon: 'Icon',
      relativeUrl: 'RelativeUrl',
      platforms: PlatformsModel(
        appStoreLink: '',
        googlePlayLink: '',
      ),
    );
    expect(musicAlbumModel.title, 'Title');
    expect(musicAlbumModel.description, 'Description');
    expect(musicAlbumModel.icon, 'Icon');
    expect(musicAlbumModel.relativeUrl, 'RelativeUrl');
    expect(musicAlbumModel.platforms, isNotNull);
  });

  test('PlatformsModel constructor', () {
    const platformsModel = PlatformsModel(
      appStoreLink: 'App Store',
      googlePlayLink: 'Google Play',
    );
    expect(platformsModel.appStoreLink, 'App Store');
    expect(platformsModel.ios, isTrue);
    expect(platformsModel.googlePlayLink, 'Google Play');
    expect(platformsModel.android, isTrue);
  });

  test('PlatformsModel.appStore() constructor', () {
    const platformsModel = PlatformsModel.appStore('App Store');
    expect(platformsModel.appStoreLink, 'App Store');
    expect(platformsModel.ios, isTrue);
    expect(platformsModel.googlePlayLink, isNull);
    expect(platformsModel.android, isFalse);
  });

  test('PlatformsModel constructor', () {
    const platformsModel = PlatformsModel.googlePlay('Google Play');
    expect(platformsModel.appStoreLink, isNull);
    expect(platformsModel.ios, isFalse);
    expect(platformsModel.googlePlayLink, 'Google Play');
    expect(platformsModel.android, isTrue);
  });
}
