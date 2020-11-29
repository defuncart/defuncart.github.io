import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/images/clickable_image.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:flutter/material.dart';

class HomeNavBarItem extends StatelessWidget {
  const HomeNavBarItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClickableImage(
      WebsiteContent.home.logoAsset,
      width: 32.0,
      height: 32.0,
      onPressed: () => RoutePageManager.of(context).resetToHome(),
    );
  }
}
