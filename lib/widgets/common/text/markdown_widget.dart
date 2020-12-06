import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:markdown/markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class MarkdownWidget extends StatelessWidget {
  const MarkdownWidget({
    Key key,
    this.data,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: markdownToHtml(data),
      onLinkTap: (url) => launch(url),
      style: {
        'body': Style(
          margin: const EdgeInsets.all(0),
        ),
        'a': Style(
          color: Theme.of(context).accentColor,
          textDecoration: TextDecoration.none,
        ),
      },
    );
  }
}
