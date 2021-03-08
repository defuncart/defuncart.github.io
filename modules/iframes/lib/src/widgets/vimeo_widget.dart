import 'package:flutter/material.dart';

import 'i_frame_widget.dart';

class VimeoWidget extends StatelessWidget {
  final String id;
  final double width;
  final double height;

  const VimeoWidget({
    Key? key,
    required this.id,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IFrameWidget(
      content:
          '<iframe src="https://player.vimeo.com/video/$id" width="$width" height="$height" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>',
      viewId: id,
      height: height + 20,
      width: width + 20,
    );
  }
}
