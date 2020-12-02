import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class UrlText extends pw.StatelessWidget {
  UrlText(
    this.text, {
    this.fontSize = 12,
    this.color = PdfColors.blue,
    this.shouldUnderline = true,
  });

  final String text;
  final double fontSize;
  final PdfColor color;
  final bool shouldUnderline;

  @override
  pw.Widget build(pw.Context context) {
    return pw.UrlLink(
      destination: text,
      child: pw.Text(
        text,
        style: pw.TextStyle(
          decoration: shouldUnderline ? pw.TextDecoration.underline : null,
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }
}
