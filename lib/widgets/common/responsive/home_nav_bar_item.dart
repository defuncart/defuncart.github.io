import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/responsive/nav_bar_item.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:flutter/material.dart';

class HomeNavBarItem extends StatelessWidget {
  const HomeNavBarItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavBarItem(
      title: WebsiteContent.userName,
      onPressed: () => RoutePageManager.of(context).resetToHome(),
    );
  }
}
