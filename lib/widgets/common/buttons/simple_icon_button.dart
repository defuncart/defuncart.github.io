import 'package:defuncart_github_io/widgets/common/gesture_detector/mouse_gesture_detector.dart';
import 'package:flutter/material.dart';

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
    return MouseGestureDetector(
      child: Icon(
        icon,
      ),
      onTap: onPressed,
    );
  }
}
