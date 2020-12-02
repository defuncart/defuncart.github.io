import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

import '../models/resume_settings.dart';
import '../models/resume_style.dart' hide Colors;
import 'resume_builder.dart';

class Resume extends StatelessWidget {
  const Resume({
    Key key,
    @required this.settings,
    this.showActions = false,
  }) : super(key: key);

  final ResumeSettings settings;
  final bool showActions;

  @override
  Widget build(BuildContext context) {
    final regularColor = Color(defaultResumeStyle.colors.regular.toInt());
    // final lightColor = Color(defaultResumeStyle.colors.light.toInt());

    return LayoutBuilder(
      builder: (_, constraints) {
        final maxWidth = constraints.maxHeight / 1.4142; // a4

        return Theme(
          data: Theme.of(context).copyWith(
            // primaryColor: regularColor, // bottom actions bar
            // accentColor: regularColor, // progress indicator
            // icons in bottom actions bar
            // accentIconTheme: IconThemeData(
            //   color: lightColor,
            // ),
            highlightColor: regularColor, // scroll view bar
          ),
          child: PdfPreview(
            maxPageWidth: maxWidth,
            build: (pageFormat) => generateResume(pageFormat, settings),
            scrollViewDecoration: BoxDecoration(
              // color: lightColor,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            actions: null,
            useActions: showActions,
            canChangePageFormat: false,
            pdfFileName: 'JamesLeahyResume',
          ),
        );
      },
    );
  }
}
