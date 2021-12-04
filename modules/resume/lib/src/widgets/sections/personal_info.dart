import 'package:pdf/widgets.dart' as pw;

import '../../configs/content.dart' as content;
import '../../models/resume_style.dart';
import '../common/default_spacer.dart';
import '../common/url_text.dart';

class PersonalInfo extends pw.StatelessWidget {
  PersonalInfo({
    required this.profileImage,
  });

  final pw.MemoryImage profileImage;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      crossAxisAlignment: pw.CrossAxisAlignment.center,
      children: [
        pw.Container(
          width: 150,
          height: 150,
          child: pw.Image(profileImage),
        ),
        DefaultSpacer.horizontal(),
        pw.Expanded(
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Column(
                children: [
                  pw.Text(
                    content.name.toUpperCase(),
                    style: pw.TextStyle(
                      fontSize: defaultResumeStyle.fontSizes.name,
                      fontWeight: pw.FontWeight.bold,
                      color: defaultResumeStyle.colors.regular,
                    ),
                  ),
                  pw.Text(
                    content.location,
                    style: pw.TextStyle(
                      fontSize: defaultResumeStyle.fontSizes.location,
                      fontWeight: pw.FontWeight.bold,
                      color: defaultResumeStyle.colors.light,
                    ),
                  ),
                ],
              ),
              pw.SizedBox(height: 8.0),
              pw.Column(
                children: [
                  pw.Text(
                    content.objective,
                    textAlign: pw.TextAlign.justify,
                    style: pw.TextStyle(
                      fontSize: defaultResumeStyle.fontSizes.objective,
                      color: defaultResumeStyle.colors.regular,
                    ),
                    // maxLines: 4,
                  ),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      UrlText(
                        content.email,
                        fontSize: defaultResumeStyle.fontSizes.links,
                        color: defaultResumeStyle.colors.light,
                        shouldUnderline: false,
                      ),
                      UrlText(
                        content.linkedin,
                        fontSize: defaultResumeStyle.fontSizes.links,
                        color: defaultResumeStyle.colors.light,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
