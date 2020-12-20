import 'package:blog/blog.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  static const relativeUrl = '/new';

  const NewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Blog(),
      floatingActionButton: BlogFAB(),
    );
  }
}
