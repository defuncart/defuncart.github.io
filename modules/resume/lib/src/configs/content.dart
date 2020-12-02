import 'package:meta/meta.dart';

const name = 'James Leahy';

const location = 'Berlin, DE';

const objective =
    'Mobile App and Game Developer with 7+ years experience shipping successful titles to the AppStore. Lead 5 projects from concept to release. Problem solver who delivers quality code,   scalable  architectures    and    elegant  user  interfaces.';

const email = 'jamesjleahy@gmail.com';

const linkedin = 'https://linkedin.com/in/jamesjleahy';

const educationHeader = 'Education';

final educationContent = [
  Entry(
    title: 'Goldsmiths College, London',
    subtitle: 'Master of Fine Art in Computational Studio Arts',
    date: 'September 2013',
  ),
  Entry(
    title: 'University of Limerick, Ireland',
    subtitle: 'Master of Art in Music Technology',
    date: 'September 2010',
  ),
  Entry(
    title: 'University of Limerick, Ireland',
    subtitle: 'Bachelor of Sciences in Mathematical Sciences and Computing',
    date: 'May 2009',
  ),
];

const workExperienceHeader = 'Work Experience';

final workExperienceContent = [
  Entry(
    title: 'Superlist, Berlin',
    subtitle: 'Senior Flutter Developer',
    date: 'Dec 2020 –',
  ),
  Entry(
    title: 'Vilua Healthcare, Berlin',
    subtitle: 'Lead Flutter Developer',
    date: 'Aug 2019 – Dec 2020',
  ),
  Entry(
    title: 'TreasureHunt, Berlin',
    subtitle: 'Unity Game Developer',
    date: 'Sept 2018 – Aug 2019',
  ),
  Entry(
    title: 'Pixel Racoons, Berlin',
    subtitle: 'Unity Game Developer',
    date: 'Jan 2017 – July 2017',
  ),
];

const languagesHeader = 'Languages';
final languagesContent = [
  Skill(
    title: 'English',
    value: 5,
  ),
  Skill(
    title: 'Deutsch',
    value: 4,
  ),
  Skill(
    title: 'Русский',
    value: 3,
  ),
  Skill(
    title: 'Polski',
    value: 2,
  ),
];

const otherSkillsHeader = 'Other Skills';
final otherSkillsContent = [
  Skill(
    title: 'Audio Engineering',
    value: 4,
  ),
  Skill(
    title: 'Adobe Creative Suite',
    value: 3,
  ),
  Skill(
    title: 'Rive',
    value: 2,
  ),
];

const developerSkillsHeader = 'Developer Skills';
final developerSkillsContent1 = [
  Skill(
    title: 'Flutter',
    value: 5,
  ),
  Skill(
    title: 'iOS',
    value: 4,
  ),
  Skill(
    title: 'Unity',
    value: 4,
  ),
  Skill(
    title: 'Android',
    value: 2,
  ),
];
final developerSkillsContent2 = [
  Skill(
    title: 'Dart',
    value: 5,
  ),
  Skill(
    title: 'C#',
    value: 4,
  ),
  Skill(
    title: 'Swift',
    value: 3,
  ),
  Skill(
    title: 'Kotlin',
    value: 2,
  ),
];
final developerSkillsContent3 = [
  Skill(
    title: 'Rapid Prototyping',
    value: 3,
  ),
  Skill(
    title: 'UI/UX',
    value: 3,
  ),
  Skill(
    title: 'CI/CD',
    value: 3,
  ),
];

class Entry {
  const Entry({
    @required this.title,
    @required this.subtitle,
    @required this.date,
  });

  final String title;
  final String subtitle;
  final String date;
}

class Skill {
  const Skill({
    @required this.title,
    @required this.value,
  });

  final String title;
  final int value;
}
