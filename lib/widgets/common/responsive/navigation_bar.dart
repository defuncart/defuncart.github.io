import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/buttons/simple_icon_button.dart';
import 'package:defuncart_github_io/widgets/common/responsive/blog_nav_bar_item.dart';
import 'package:defuncart_github_io/widgets/common/responsive/home_nav_bar_item.dart';
import 'package:defuncart_github_io/widgets/common/responsive/nav_bar_item.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  static const height = 36.0;

  const NavigationBar({
    Key? key,
    required this.orientation,
  }) : super(key: key);

  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: orientation == Orientation.landscape ? const _NavBarLandscape() : const _NavBarPortrait(),
    );
  }
}

class _NavBarPortrait extends StatelessWidget {
  const _NavBarPortrait({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SimpleIconButton(
          icon: Icons.menu,
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ],
    );
  }
}

class _NavBarLandscape extends StatelessWidget {
  const _NavBarLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const HomeNavBarItem(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            for (final navItem in WebsiteContent.navBarItems)
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: NavBarItem(
                  title: navItem.title,
                  onPressed: () => RoutePageManager.of(context).setNewRoutePath(navItem.url),
                ),
              ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: BlogNavBarItem(),
            ),
          ],
        ),
      ],
    );
  }
}
