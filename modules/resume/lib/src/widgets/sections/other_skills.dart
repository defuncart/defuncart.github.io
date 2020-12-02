import 'package:pdf/widgets.dart' as pw;

import '../../configs/content.dart' as content;
import '../common/section.dart';
import '../common/skills_group.dart';

class OtherSkills extends pw.StatelessWidget {
  OtherSkills();

  @override
  pw.Widget build(pw.Context context) {
    return Section(
      header: content.otherSkillsHeader,
      content: SkillsGroup(
        skills: content.otherSkillsContent,
      ),
    );
  }
}
