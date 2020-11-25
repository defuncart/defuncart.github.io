import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    Key key,
    @required this.title,
    @required this.onPressed,
  })  : assert(title != null),
        assert(onPressed != null),
        super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
