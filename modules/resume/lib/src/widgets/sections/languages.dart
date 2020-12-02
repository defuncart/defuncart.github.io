import 'package:pdf/widgets.dart' as pw;

import '../../configs/content.dart' as content;
import '../common/section.dart';
import '../common/skills_group.dart';

class Languages extends pw.StatelessWidget {
  Languages();

  @override
  pw.Widget build(pw.Context context) {
    return Section(
      header: content.languagesHeader,
      content: SkillsGroup(
        skills: content.languagesContent,
      ),
    );
  }
}
