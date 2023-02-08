const name = 'James Leahy';

const location = 'Berlin, DE';

const objective =
    'Mobile and desktop app developer with 12+ years experience shipping successful apps and games. Lead multiple projects from concept to release. Problem solver who delivers quality code,    scalable  architectures    and    elegant  user  interfaces.';

const email = 'james@flutterexpert.dev';

const linkedin = 'https://linkedin.com/in/jamesjleahy';

const educationHeader = 'Education';

const educationContent = [
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

const workExperienceContent = [
  Entry(
    title: 'Various, Berlin',
    subtitle: 'Freelance Flutter Developer',
    date: 'April 2022 –',
  ),
  Entry(
    title: 'Superlist, Berlin',
    subtitle: 'Senior Flutter Developer',
    date: 'Dec 2020 – April 2022',
  ),
  Entry(
    title: 'Vilua Healthcare, Berlin',
    subtitle: 'Lead Flutter Developer',
    date: 'Aug 2019 – Dec 2020',
  ),
  Entry(
    title: 'Various, Berlin',
    subtitle: 'iOS & Unity Developer',
    date: 'Sept 2013 – Aug 2019',
  ),
];

const languagesHeader = 'Languages';
const languagesContent = [
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
const otherSkillsContent = [
  Skill(
    title: 'Audio Engineering',
    value: 4,
  ),
  Skill(
    title: 'Figma',
    value: 3,
  ),
  Skill(
    title: 'Sketch',
    value: 2,
  ),
];

const developerSkillsHeader = 'Developer Skills';
const developerSkillsContent1 = [
  Skill(
    title: 'Flutter',
    value: 5,
  ),
  Skill(
    title: 'iOS',
    value: 4,
  ),
  Skill(
    title: 'Android',
    value: 3,
  ),
  Skill(
    title: 'Web',
    value: 3,
  ),
];
const developerSkillsContent2 = [
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
const developerSkillsContent3 = [
  Skill(
    title: 'CI/CD',
    value: 4,
  ),
  Skill(
    title: 'Firebase',
    value: 4,
  ),
  Skill(
    title: 'UI/UX',
    value: 3,
  ),
];

const footer = 'Designed by James Leahy, made with Flutter';

class Entry {
  const Entry({
    required this.title,
    required this.subtitle,
    required this.date,
  });

  final String title;
  final String subtitle;
  final String date;
}

class Skill {
  const Skill({
    required this.title,
    required this.value,
  });

  final String title;
  final int value;
}
