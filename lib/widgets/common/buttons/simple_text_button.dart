import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SimpleTextButton extends StatelessWidget {
  const SimpleTextButton({
    Key key,
    @required this.text,
    @required this.onPressed,
    this.textStyle,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Text(
          text,
          style: textStyle ?? Theme.of(context).textTheme.bodyText2,
        ),
        onTap: onPressed,
      ),
    );
  }
}
