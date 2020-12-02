import 'package:pdf/widgets.dart' as pw;

import '../../models/resume_style.dart';

class DefaultSpacer extends pw.StatelessWidget {
  final double width;
  final double height;

  DefaultSpacer.horizontal()
      : width = defaultResumeStyle.spacer,
        height = 0;

  DefaultSpacer.vertical()
      : width = 0,
        height = defaultResumeStyle.spacer;

  @override
  pw.Widget build(pw.Context context) => pw.SizedBox(width: width, height: height);
}
