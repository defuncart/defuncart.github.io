import 'package:blog/src/enums/category.dart';
import 'package:flutter/foundation.dart' show describeEnum;
import 'package:flutter/material.dart';

class CategoryBar extends StatefulWidget {
  const CategoryBar({
    Key key,
    @required this.onCategorySelected,
  }) : super(key: key);

  final void Function(Category) onCategorySelected;

  @override
  _CategoryBarState createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var i = 0; i < Category.values.length; i++)
          CategoryButton(
            text: describeEnum(Category.values[i]).toUpperCase(),
            isSelected: i == _selectedIndex,
            onPressed: () {
              widget.onCategorySelected(Category.values[i]);
              setState(() => _selectedIndex = i);
            },
          ),
      ],
    );
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    Key key,
    @required this.text,
    @required this.isSelected,
    @required this.onPressed,
  }) : super(key: key);

  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: isSelected ? Color(0xff58595b) : Color(0xffa7a9ac),
        width: 125,
        height: 50,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyText2.apply(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
          ),
        ),
      ),
    );
  }
}
