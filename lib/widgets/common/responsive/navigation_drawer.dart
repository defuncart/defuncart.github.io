import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/responsive/nav_bar_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          NavBarItem(
            title: WebsiteContent.userName,
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: WebsiteContent.navBarItems.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: NavBarItem(
                    title: WebsiteContent.navBarItems[index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
