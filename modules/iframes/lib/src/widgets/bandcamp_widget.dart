import 'package:flutter/material.dart';

import 'i_frame_widget.dart';

class BandcampWidget extends StatelessWidget {
  final String id;
  final String url;
  final String credits;
  final double width;
  final double height;

  const BandcampWidget({
    Key? key,
    required this.id,
    required this.url,
    required this.credits,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IFrameWidget(
      content:
          '<iframe style="border: 0; width: ${width}px; height: ${height}px;" src="https://bandcamp.com/EmbeddedPlayer/album=$id/size=large/bgcol=333333/linkcol=0f91ff/artwork=small/transparent=true/" seamless><a href="$url">$credits</a></iframe>',
      viewId: id,
      height: height + 20,
      width: width + 20,
    );
  }
}
