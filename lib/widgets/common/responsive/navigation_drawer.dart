import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/buttons/simple_icon_button.dart';
import 'package:defuncart_github_io/widgets/common/responsive/blog_nav_bar_item.dart';
import 'package:defuncart_github_io/widgets/common/responsive/nav_bar_item.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SimpleIconButton(
                  icon: Icons.close,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            SizedBox(height: 32.0),
            NavBarItem(
              title: 'Home',
              // TODO doesn't seem to work correctly when webpage opened from drawer
              onPressed: () {
                Navigator.of(context).pop();
                RoutePageManager.of(context).resetToHome();
              },
            ),
            SizedBox(height: 16.0),
            for (final item in WebsiteContent.navBarItems)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: NavBarItem(
                  title: item.title,
                  onPressed: () => RoutePageManager.of(context).setNewRoutePath(item.url),
                ),
              ),
            SizedBox(height: 16.0),
            BlogNavBarItem(),
          ],
        ),
      ),
    );
  }
}
