import 'package:defuncart_github_io/widgets/common/gesture_detector/mouse_gesture_detector.dart';
import 'package:flutter/material.dart';

class ClickableImage extends StatelessWidget {
  const ClickableImage(
    this.src, {
    Key? key,
    required this.width,
    required this.height,
    required this.onPressed,
  }) : super(key: key);

  final String src;
  final double width;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MouseGestureDetector(
      child: Image.asset(
        src,
        width: width,
        height: height,
      ),
      onTap: onPressed,
    );
  }
}
