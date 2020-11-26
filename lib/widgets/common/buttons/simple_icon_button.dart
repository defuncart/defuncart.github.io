import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SimpleIconButton extends StatelessWidget {
  const SimpleIconButton({
    Key key,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Icon(
          icon,
        ),
        onTap: onPressed,
      ),
    );
  }
}
