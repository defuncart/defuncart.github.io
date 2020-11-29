import 'package:defuncart_github_io/widgets/common/responsive/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogNavBarItem extends StatelessWidget {
  const BlogNavBarItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavBarItem(
      title: 'Blog',
      onPressed: () => launch('https://defuncart.com/blog/'),
    );
  }
}
