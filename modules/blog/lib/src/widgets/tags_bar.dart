import 'package:blog/src/configs/blog_settings.dart';
import 'package:flutter/material.dart';

import '../enums/category.dart';
import 'category_bar.dart';

class TagsBar extends StatefulWidget {
  const TagsBar({
    Key key,
    @required this.category,
    @required this.selectedTag,
    @required this.onTagSelected,
  }) : super(key: key);

  final Category category;
  final String selectedTag;
  final void Function(String) onTagSelected;

  @override
  _TagBarState createState() => _TagBarState();
}

class _TagBarState extends State<TagsBar> {
  var _selectedIndex;

  List<String> get _tags => tagsForCategories[widget.category];

  @override
  void didUpdateWidget(covariant TagsBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.selectedTag == null) {
      _selectedIndex = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var i = 0; i < _tags.length; i++)
          CategoryButton(
            text: _tags[i],
            isSelected: i == _selectedIndex,
            onPressed: () {
              widget.onTagSelected(_tags[i]);
              setState(() => _selectedIndex = i);
            },
          ),
      ],
    );
  }
}
