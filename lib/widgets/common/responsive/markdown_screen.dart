import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/common/text/markdown_widget.dart';
import 'package:flutter/material.dart';

class MarkdownScreen extends StatelessWidget {
  const MarkdownScreen({
    Key key,
    this.data,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: MarkdownWidget(
        data: data,
      ),
    );
  }
}
