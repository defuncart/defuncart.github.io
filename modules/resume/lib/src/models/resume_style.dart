import 'package:pdf/pdf.dart';

final defaultResumeStyle = ResumeStyle();

class ResumeStyle {
  final FontSizes fontSizes;
  final Colors colors;
  final double spacer;

  ResumeStyle({
    FontSizes? fontSizes,
    Colors? colors,
    double? spacer,
  })  : fontSizes = fontSizes ?? FontSizes(),
        colors = colors ?? Colors(),
        spacer = spacer ?? PdfPageFormat.cm;
}

class FontSizes {
  final double name;
  final double location;
  final double objective;
  final double links;
  final double header;
  final double subheader;
  final double regular;

  const FontSizes({
    double? name,
    double? location,
    double? objective,
    double? links,
    double? header,
    double? subheader,
    double? regular,
  })  : name = name ?? 30.0,
        location = location ?? 16.0,
        objective = objective ?? 12.4,
        links = links ?? 12.0,
        header = header ?? 18.0,
        subheader = subheader ?? 14.0,
        regular = regular ?? 14.0;
}

class Colors {
  Colors({
    PdfColor? regular,
    PdfColor? light,
  })  : regular = regular ?? PdfColor.fromHex('58595b'),
        light = light ?? PdfColor.fromHex('a7a9ac');

  final PdfColor regular;
  final PdfColor light;
}
