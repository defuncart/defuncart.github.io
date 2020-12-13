import 'package:flutter/material.dart';

import 'tag.dart';

class PostTile extends StatelessWidget {
  const PostTile({
    Key key,
    this.title,
    @required this.content,
    @required this.tags,
  }) : super(key: key);

  final String title;
  final Widget content;
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        // elevation: Styling.cardElevation,
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              if (title != null)
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline5,
                ),
              SizedBox(height: 8.0),
              content,
              SizedBox(height: 8.0),
              Wrap(
                children: [
                  for (final tag in tags) Tag(tag: tag),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
