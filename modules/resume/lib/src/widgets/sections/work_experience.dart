import 'package:pdf/widgets.dart' as pw;

import '../../configs/content.dart' as content;
import '../common/entry_widget.dart';
import '../common/section.dart';

class WorkExperience extends pw.StatelessWidget {
  WorkExperience();

  @override
  pw.Widget build(pw.Context context) {
    return Section(
      header: content.workExperienceHeader,
      content: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          for (var i = 0; i < content.workExperienceContent.length; i++)
            pw.Padding(
              padding: pw.EdgeInsets.only(bottom: i < content.workExperienceContent.length - 1 ? 8.0 : 0.0),
              child: EntryWidget(entry: content.workExperienceContent[i]),
            ),
        ],
      ),
    );
  }
}
