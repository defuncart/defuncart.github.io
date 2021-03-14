import 'dart:html' as html;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class IFrameWidget extends StatefulWidget {
  final String content;
  final String viewId;
  final double width;
  final double height;

  IFrameWidget({
    required this.content,
    required this.viewId,
    this.width = double.infinity,
    this.height = double.infinity,
    Key? key,
  }) : super(key: key);

  @override
  _IFrameWidgetState createState() => _IFrameWidgetState();
}

class _IFrameWidgetState extends State<IFrameWidget> {
  @override
  void initState() {
    super.initState();

    ui.platformViewRegistry.registerViewFactory(
      widget.viewId,
      (viewId) => html.IFrameElement()
        // ..width = '800'
        // ..height = '400'
        ..srcdoc = widget.content
        ..style.border = 'none',
      // ..style.padding = 'none'
      // ..style.paddingStart = '0px'
      // ..style.paddingBottom = '0px'
      // ..style.margin = 'none'
      // ..style.marginBottom = '0px'
      // ..style.marginTop = '0px',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: HtmlElementView(
        viewType: widget.viewId,
      ),
    );
  }
}
