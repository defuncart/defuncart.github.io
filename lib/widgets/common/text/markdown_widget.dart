import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:markdown/markdown.dart';
import 'package:url_launcher/url_launcher.dart';

export 'package:flutter_html/style.dart';

class MarkdownWidget extends StatelessWidget {
  const MarkdownWidget({
    Key? key,
    required this.data,
    this.style = const {},
  }) : super(key: key);

  final String data;
  final Map<String, Style> style;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: markdownToHtml(data),
      onLinkTap: (url, _, __, ___) => launch(url!),
      style: {
        'body': Style(
          margin: const EdgeInsets.all(0),
        ),
        'a': Style(
          color: Theme.of(context).accentColor,
          textDecoration: TextDecoration.none,
        ),
        'td': Style(
          padding: const EdgeInsets.all(4),
        ),
        if (style.isNotEmpty) ...style,
      },
    );
  }
}
