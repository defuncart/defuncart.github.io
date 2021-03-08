class AppModel {
  const AppModel({
    required this.title,
    required this.description,
    required this.icon,
    required this.relativeUrl,
    required this.platforms,
  });

  final String title;
  final String description;
  final String icon;
  final String relativeUrl;
  final PlatformsModel platforms;
}

class PlatformsModel {
  const PlatformsModel({
    this.appStoreLink,
    this.googlePlayLink,
  });

  const PlatformsModel.appStore(this.appStoreLink) : googlePlayLink = null;

  const PlatformsModel.googlePlay(this.googlePlayLink) : appStoreLink = null;

  final String? appStoreLink;
  final String? googlePlayLink;

  bool get ios => appStoreLink != null;

  bool get android => googlePlayLink != null;
}
