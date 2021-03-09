import 'package:flutter/widgets.dart';

import 'i_frame_widget.dart';

class MixcloudWidget extends StatelessWidget {
  static const minWidth = 325;

  final String id;
  final double? width;
  final double height;

  const MixcloudWidget({
    Key? key,
    required this.id,
    this.width,
    this.height = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthAsString = width?.toString() ?? '100%';
    return IFrameWidget(
      content:
          '<iframe width="$widthAsString" height="$height" src="https://www.mixcloud.com/widget/iframe/?hide_cover=1&amp;feed=%2Fstrawberrycomplexity%2F$id%2F" frameborder="0"></iframe>',
      viewId: id,
      height: height + 20,
      width: width! + 20,
    );
  }
}
