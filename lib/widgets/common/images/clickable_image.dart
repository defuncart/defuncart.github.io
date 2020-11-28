import 'package:defuncart_github_io/widgets/common/gesture_detector/mouse_gesture_detector.dart';
import 'package:flutter/material.dart';

enum ClickableImageType {
  asset,
  network,
}

extension ClickableImageTypeExtensions on ClickableImageType {
  bool get isAsset => this == ClickableImageType.asset;
}

class ClickableImage extends StatelessWidget {
  const ClickableImage(
    this.src, {
    Key key,
    @required this.width,
    @required this.height,
    @required this.onPressed,
    this.type = ClickableImageType.asset,
  }) : super(key: key);

  final String src;
  final double width;
  final double height;
  final VoidCallback onPressed;
  final ClickableImageType type;

  @override
  Widget build(BuildContext context) {
    final image = type.isAsset
        ? Image.asset(
            src,
            width: width,
            height: height,
          )
        : Image.network(
            src,
            width: width,
            height: height,
          );

    return MouseGestureDetector(
      child: image,
      onTap: onPressed,
    );
  }
}
