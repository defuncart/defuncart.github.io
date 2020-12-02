import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class SVGIcon extends pw.StatelessWidget {
  SVGIcon(
    this.data, {
    this.color = PdfColors.red,
    this.width = 27,
    this.height = 24,
    this.fit = pw.BoxFit.contain,
  });

  final String data;
  final PdfColor color;
  final double width;
  final double height;
  final pw.BoxFit fit;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Shape(
      data,
      width: width,
      height: height,
      fillColor: color,
      fit: fit,
    );
  }
}
