import 'package:defuncart_github_io/widgets/common/images/clickable_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DownloadAppStores extends StatelessWidget {
  const DownloadAppStores({
    Key? key,
    this.appStoreLink,
    this.googlePlayLink,
  }) : super(key: key);

  final String? appStoreLink;
  final String? googlePlayLink;

  bool get _hasAppStore => appStoreLink != null;
  bool get _hasGooglePlay => googlePlayLink != null;

  @override
  Widget build(BuildContext context) {
    assert(_hasAppStore || _hasGooglePlay);

    return Wrap(
      spacing: 16.0,
      runSpacing: 16.0,
      alignment: WrapAlignment.center,
      children: [
        if (_hasAppStore)
          AppStoreButton(
            assetpath: 'assets/apps/common/download_app_store_logo.png',
            onPressed: () => launchUrlString(appStoreLink!),
          ),
        if (_hasGooglePlay)
          AppStoreButton(
            assetpath: 'assets/apps/common/get_on_google_play_logo.png',
            onPressed: () => launchUrlString(googlePlayLink!),
          ),
      ],
    );
  }
}

class AppStoreButton extends StatelessWidget {
  static const _scale = 0.35;
  static const _width = 563 * _scale;
  static const _height = 188 * _scale;

  const AppStoreButton({
    Key? key,
    required this.assetpath,
    required this.onPressed,
  }) : super(key: key);

  final String assetpath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClickableImage(
      assetpath,
      width: _width,
      height: _height,
      onPressed: onPressed,
    );
  }
}
