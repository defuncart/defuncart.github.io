import 'package:pdf/widgets.dart' as pw;

import '../../configs/content.dart' as content;
import '../../models/resume_style.dart';

class EntryWidget extends pw.StatelessWidget {
  EntryWidget({
    required this.entry,
  });

  final content.Entry entry;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          entry.title,
          style: pw.TextStyle(
            fontSize: defaultResumeStyle.fontSizes.subheader,
            fontWeight: pw.FontWeight.bold,
            color: defaultResumeStyle.colors.light,
          ),
        ),
        pw.Text(
          entry.subtitle,
          style: pw.TextStyle(
            fontSize: defaultResumeStyle.fontSizes.regular,
            color: defaultResumeStyle.colors.regular,
          ),
        ),
        pw.Text(
          entry.date,
          style: pw.TextStyle(
            fontSize: defaultResumeStyle.fontSizes.regular,
            color: defaultResumeStyle.colors.light,
          ),
        ),
      ],
    );
  }
}
