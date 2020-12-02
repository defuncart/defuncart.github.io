import 'package:meta/meta.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../configs/content.dart';
import 'skill_widget.dart';

class SkillsGroup extends pw.StatelessWidget {
  SkillsGroup({
    @required this.skills,
  });

  final List<Skill> skills;

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        for (var i = 0; i < skills.length; i++)
          pw.Padding(
            padding: pw.EdgeInsets.only(bottom: i < skills.length - 1 ? 8.0 : 0.0),
            child: SkillWidget(
              skill: skills[i],
            ),
          ),
      ],
    );
  }
}
