import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:markdown/markdown.dart';
import 'package:url_launcher/url_launcher.dart';

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
      onLinkTap: (url, _, __, ___) => url != null ? launch(url) : null,
      style: {
        'body': Style(
          margin: const EdgeInsets.all(0),
        ),
        'a': Style(
          color: Theme.of(context).colorScheme.secondary,
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
