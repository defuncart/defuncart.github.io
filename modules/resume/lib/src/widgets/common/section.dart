import 'package:meta/meta.dart';
import 'package:pdf/widgets.dart' as pw;

import 'header_text.dart';

class Section extends pw.StatelessWidget {
  Section({
    @required this.header,
    @required this.content,
  });

  final String header;
  final pw.Widget content;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        HeaderText(header),
        pw.SizedBox(height: 4.0),
        content,
      ],
    );
  }
}
