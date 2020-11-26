import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: image,
        onTap: onPressed,
      ),
    );
  }
}
