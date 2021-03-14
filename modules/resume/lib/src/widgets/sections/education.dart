import 'package:pdf/widgets.dart' as pw;

import '../../configs/content.dart' as content;
import '../../models/resume_style.dart';
import '../common/entry_widget.dart';
import '../common/section.dart';

class Education extends pw.StatelessWidget {
  Education();

  @override
  pw.Widget build(pw.Context context) {
    return Section(
      header: content.educationHeader,
      content: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          _Entry2Widget(entry: content.educationContent[0]),
          pw.SizedBox(height: 8.0),
          EntryWidget(entry: content.educationContent[1]),
          pw.SizedBox(height: 8.0),
          _Entry2Widget(entry: content.educationContent[2]),
        ],
      ),
    );
  }
}

class _Entry2Widget extends pw.StatelessWidget {
  final content.Entry entry;

  _Entry2Widget({
    required this.entry,
  });

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
        pw.RichText(
          text: pw.TextSpan(
            children: [
              pw.TextSpan(
                text: entry.subtitle,
                style: pw.TextStyle(
                  fontSize: defaultResumeStyle.fontSizes.regular,
                  color: defaultResumeStyle.colors.regular,
                ),
              ),
              pw.TextSpan(text: '  '),
              pw.TextSpan(
                text: entry.date,
                style: pw.TextStyle(
                  fontSize: defaultResumeStyle.fontSizes.regular,
                  color: defaultResumeStyle.colors.light,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
