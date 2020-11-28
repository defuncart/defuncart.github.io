import 'package:meta/meta.dart';

class AppModel {
  const AppModel({
    @required this.title,
    @required this.description,
    @required this.icon,
    @required this.relativeUrl,
    this.platforms = const PlatformsModel.all(),
  });

  final String title;
  final String description;
  final String icon;
  final String relativeUrl;
  final PlatformsModel platforms;
}

class PlatformsModel {
  const PlatformsModel.all()
      : ios = true,
        android = true;

  const PlatformsModel.ios()
      : ios = true,
        android = false;

  const PlatformsModel.android()
      : ios = false,
        android = true;

  final bool ios;
  final bool android;
}
