import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/responsive/nav_bar_item.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  final Orientation orientation;

  const NavigationBar({
    @required this.orientation,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: orientation == Orientation.landscape ? _NavBarLandscape() : _NavBarPortrait(),
    );
  }
}

class _NavBarPortrait extends StatelessWidget {
  const _NavBarPortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ],
    );
  }
}

class _NavBarLandscape extends StatelessWidget {
  const _NavBarLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        NavBarItem(
          title: WebsiteContent.userName,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            for (final navItem in WebsiteContent.navBarItems)
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: NavBarItem(
                  title: navItem,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
