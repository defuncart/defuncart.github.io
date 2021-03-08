import 'package:flutter/material.dart';

import 'i_frame_widget.dart';

class YoutubeWidget extends StatelessWidget {
  final String id;
  final double width;
  final double height;

  const YoutubeWidget({
    Key? key,
    required this.id,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IFrameWidget(
      content:
          '<iframe width="$width" height="$height" src="https://www.youtube.com/embed/$id" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
      viewId: id,
      height: height + 20,
      width: width + 20,
    );
  }
}
