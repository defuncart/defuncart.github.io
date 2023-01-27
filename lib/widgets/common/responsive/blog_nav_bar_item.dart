import 'package:defuncart_github_io/widgets/common/responsive/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BlogNavBarItem extends StatelessWidget {
  const BlogNavBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavBarItem(
      title: 'Blog',
      onPressed: () => launchUrlString('https://defuncart.com/blog/'),
    );
  }
}
