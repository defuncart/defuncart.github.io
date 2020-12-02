import 'package:pdf/widgets.dart' as pw;

import '../../models/resume_style.dart';

class HeaderText extends pw.StatelessWidget {
  HeaderText(this.text);

  final String text;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Text(
      text.toUpperCase(),
      style: pw.TextStyle(
        fontSize: defaultResumeStyle.fontSizes.header,
        color: defaultResumeStyle.colors.regular,
        fontWeight: pw.FontWeight.bold,
      ),
    );
  }
}
