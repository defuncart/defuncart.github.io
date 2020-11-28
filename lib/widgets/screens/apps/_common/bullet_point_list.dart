import 'package:flutter/material.dart';

class BulletPointList extends StatelessWidget {
  const BulletPointList({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    assert(items.isNotEmpty);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final item in items)
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Icon(
                Icons.circle,
                size: Theme.of(context).textTheme.bodyText2.fontSize * 0.5,
              ),
              SizedBox(width: 4.0),
              Flexible(
                child: Text(item),
              ),
            ],
          ),
      ],
    );
  }
}
