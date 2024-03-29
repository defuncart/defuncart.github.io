import 'dart:async';
import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/src/configs/content.dart';
import 'package:resume/src/widgets/sections/personal_info.dart';

import '../../resume.dart';
import '../models/resume_style.dart';
import 'common/default_spacer.dart';
import 'sections/developer_skills.dart';
import 'sections/education.dart';
import 'sections/languages.dart';
import 'sections/other_skills.dart';
import 'sections/work_experience.dart';

Future<Uint8List> generateResume(PdfPageFormat format, ResumeSettings settings) async {
  format = PdfPageFormat.a4.copyWith(
    marginTop: PdfPageFormat.cm,
    marginBottom: PdfPageFormat.cm,
    marginLeft: PdfPageFormat.cm,
    marginRight: PdfPageFormat.cm,
  );

  final doc = pw.Document(title: 'Résumé', author: 'James Leahy');

  final profileImage = pw.MemoryImage(
    (await settings.profileAsset).buffer.asUint8List(),
  );

  final pageTheme = pw.PageTheme(
    pageFormat: format,
    theme: pw.ThemeData.withFont(
      base: pw.Font.ttf(await settings.baseFontAsset),
      bold: pw.Font.ttf(await settings.boldFontAsset),
      italic: pw.Font.ttf(await settings.italicFontAsset),
    ),
  );

  doc.addPage(
    pw.Page(
      pageTheme: pageTheme,
      build: (_) => pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: <pw.Widget>[
          PersonalInfo(profileImage: profileImage),
          DefaultSpacer.vertical(),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(
                width: 241,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    Education(),
                    pw.SizedBox(height: 18.5), // to ensure left, right bottom aligned
                    DeveloperSkills(),
                  ],
                ),
              ),
              DefaultSpacer.horizontal(),
              pw.SizedBox(
                width: 241,
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    WorkExperience(),
                    DefaultSpacer.vertical(),
                    Languages(),
                    DefaultSpacer.vertical(),
                    OtherSkills(),
                  ],
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 17),
          pw.Center(
            child: pw.Text(
              footer,
              style: pw.TextStyle(
                fontStyle: pw.FontStyle.italic,
                color: defaultResumeStyle.colors.light,
              ),
            ),
          ),
        ],
      ),
    ),
  );

  return doc.save();
}
