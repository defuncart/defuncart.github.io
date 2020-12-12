import 'package:flutter/material.dart';

import '../configs/blog_settings.dart';

class Blog extends StatelessWidget {
  const Blog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (final category in categories)
              Container(
                color: Colors.red,
                width: 100,
                height: 50,
                child: Center(
                  child: Text(
                    category,
                    style: Theme.of(context).textTheme.bodyText2.apply(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (final tag in tags)
              Container(
                color: Colors.blue,
                width: 100,
                height: 50,
                child: Text(
                  '#$tag',
                  style: Theme.of(context).textTheme.bodyText2.apply(
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
