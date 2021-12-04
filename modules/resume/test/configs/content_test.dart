import 'package:flutter_test/flutter_test.dart';
import 'package:resume/src/configs/content.dart';

void main() {
  test('Entry', () {
    const entry = Entry(
      title: 'Title',
      subtitle: 'Subtitle',
      date: 'Date',
    );
    expect(entry.title, 'Title');
    expect(entry.subtitle, 'Subtitle');
    expect(entry.date, 'Date');
  });

  test('Skill', () {
    const skill = Skill(
      title: 'Title',
      value: 1,
    );
    expect(skill.title, 'Title');
    expect(skill.value, 1);
  });
}
