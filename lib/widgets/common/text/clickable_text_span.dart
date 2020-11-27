import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// A TextSpan which is clickable and opens a given url
class ClickableTextSpan extends TextSpan {
  /// Constructs a new instance of `ClickableTextSpan`
  ///
  /// [text] and [onPressed] are required.
  /// [style] is optional. If not given, default from theme will be used.
  ClickableTextSpan({
    @required String text,
    TextStyle style,
    @required VoidCallback onPressed,
  }) : super(
          text: text,
          style: style,
          recognizer: TapGestureRecognizer()..onTap = onPressed,
        );
}
