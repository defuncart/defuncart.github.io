import 'package:pdf/widgets.dart' as pw;

import '../../configs/content.dart' as content;
import '../common/section.dart';
import '../common/skills_group.dart';

class DeveloperSkills extends pw.StatelessWidget {
  DeveloperSkills();

  @override
  pw.Widget build(pw.Context context) {
    return Section(
      header: content.developerSkillsHeader,
      content: pw.Column(
        children: [
          SkillsGroup(
            skills: content.developerSkillsContent1,
          ),
          pw.SizedBox(height: 16.0),
          SkillsGroup(
            skills: content.developerSkillsContent2,
          ),
          pw.SizedBox(height: 16.0),
          SkillsGroup(
            skills: content.developerSkillsContent3,
          ),
        ],
      ),
    );
  }
}
