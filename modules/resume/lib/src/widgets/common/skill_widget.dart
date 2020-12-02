import 'package:meta/meta.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../configs/content.dart';
import '../../models/resume_style.dart';

class SkillWidget extends pw.StatelessWidget {
  SkillWidget({
    @required this.skill,
  });

  final Skill skill;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Text(
          skill.title,
          style: pw.TextStyle(
            color: defaultResumeStyle.colors.regular,
            fontSize: defaultResumeStyle.fontSizes.regular,
          ),
        ),
        pw.Row(
          children: [
            for (var j = 0; j < 5; j++)
              pw.Padding(
                padding: pw.EdgeInsets.only(right: j < 4 ? 8.0 : 0.0),
                child: _Circle(
                  size: 12,
                  color: j < skill.value ? defaultResumeStyle.colors.regular : defaultResumeStyle.colors.light,
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class _Circle extends pw.StatelessWidget {
  _Circle({
    @required this.color,
    @required this.size,
  });

  final PdfColor color;
  final double size;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
      width: size,
      height: size,
      decoration: pw.BoxDecoration(
        color: color,
        shape: pw.BoxShape.circle,
      ),
    );
  }
}
