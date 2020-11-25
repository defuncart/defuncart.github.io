import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      WebsiteContent.footer,
      style: Theme.of(context).textTheme.bodyText2.copyWith(
            fontSize: Theme.of(context).textTheme.bodyText2.fontSize * 0.75,
          ),
    );
  }
}
