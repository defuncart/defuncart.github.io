import '../enums/category.dart';
import '../models/film_post.dart';
import '../models/music_post.dart';
import '../models/photography_post.dart';

part 'blog_settings_photography.part.dart';

final tagsForCategories = {
  Category.music: [
    'GrayDawn',
    'StrawberryComplexity',
  ],
  Category.film: [
    'GrayDawn',
    'StrawberryComplexity',
  ],
  Category.photography: [
    'StreetArt',
    'Travel',
    'Berlin',
  ],
};

final allPosts = [
  ...musicPosts,
  ...filmPosts,
  ...photographyPosts,
];

final musicPosts = [
  const MusicPost(
    title: 'Midsommar Techno Rave 2022',
    date: '2022-06-21',
    description: 'A hard and acid techno mix comprising of tracks released over the last six months.',
    id: 'midsommar-techno-rave-2022',
  ),
  const MusicPost(
    title: 'Unholy Techno 2021',
    date: '2022-04-15',
    description: 'A 150 bpm hard techno mix comprising of tracks from 2021.',
    id: 'unholy-techno-2021',
  ),
  const MusicPost(
    title: 'Hard Techno 2021',
    date: '2022-03-03',
    description: 'A hard techno mix comprised of tracks from 2021.',
    id: 'hard-techno-2021',
  ),
  const MusicPost(
    title: 'Techno 2021 NYE',
    date: '2021-12-31',
    description: 'A mix for New Years Eve comprising of peak techno bangers from 2021.',
    id: 'technno-2021-nye',
  ),
  const MusicPost(
    title: 'Trap Metal 2016 - 2017',
    date: '2021-12-02',
    description:
        'Trap metal is a genre combining elements of trap music and heavy metal, as well as elements of genres such as industrial.',
    id: 'trap-metal-2016-2017',
  ),
  const MusicPost(
    title: 'Techno 2015',
    date: '2021-05-25',
    description: 'A mix comprising of techno tracks from 2015.',
    id: 'techno-2015',
  ),
  const MusicPost(
    title: 'Techno 2014',
    date: '2021-04-17',
    description: 'A mix comprising of techno tracks from 2014.',
    id: 'techno-2014',
  ),
  const MusicPost(
    title: 'Techno 2011 - 2013',
    date: '2021-04-02',
    description: 'A mix comprising of techno bangers from 2011 to 2013.',
    id: 'techno-2011-2013',
  ),
  const MusicPost(
    title: 'Wi†çh H∅u\$3 2010',
    date: '2021-03-15',
    description:
        'Witch house is a dark electronic micro-genre that emerged in late 2009 and enjoyed brief popularity through 2010.',
    id: 'wiçh-hu3-2010',
  ),
  const MusicPost(
    title: 'Post-Hardcore 2020',
    date: '2020-11-30',
    description: 'A Post-Hardcore mix comprising of tracks from 2020.',
    id: 'post-hardcore-2020',
  ),
  const MusicPost(
    title: 'Digital Hardcore 1994-1995',
    date: '2020-03-30', //TODO
    description:
        'Digital hardcore is genre fusing hardcore punk and diverse electronic genres such as breakbeat, jungle and techno, while also drawing on heavy metal and noise music.',
    id: 'digital-hardcore-1994-1995',
  ),
  const MusicPost(
    title: 'Rise of Brostep',
    date: '2020-02-29',
    description:
        "Brostep is a post-dubstep genre which received major commercial success between 2011 and 2014, especially in the US. Compared to dubstep's sub-bass wobbles and dub/garage UK beginnings, brostep is generally much more aggressive, focuses on the mid-range with tons and wobble and features heavy drops.",
    id: 'rise-of-brostep',
  ),
  const MusicPost(
    title: 'Early Grime 2002 - 2007',
    date: '2019-02-13',
    description:
        'Grime is a subgenre of electronic music which draws from a wide variety of influences, for instance UK Garage, Dancehall and Hip Hop.',
    id: 'early-grime-2002-2007',
  ),
  const MusicPost(
    title: '16-03-03 Electro',
    date: '2016-03-03',
    description:
        'Short and sweet electro mix featuring tracks from Arp Aubert, KiNK, Stardust, Throwing Snow, Percussions and more!',
    id: '16-03-03-electro',
  ),
  const MusicPost(
    title: 'Techstep 1995 - 1998',
    date: '2015-10-08',
    description:
        "Techstep was a subgenre of drum and bass popular in the late 90s. Characterized by dark synths and sci-fi tones, in its hay-day, Techstep was in fact the leading sound of DnB. The subgenre started to loose traction around the start of the new millennium and later matured into Neofunk. Here is a mix comprising of my favorite tracks over the subgenre's first four and most influential years.",
    id: 'techstep-1995-1999',
  ),
  const MusicPost(
    title: '15-07-09 Post Dubstep/Future Garage',
    date: '2015-07-09',
    description:
        'From 2009 to 2012 some dubstep producers tried to escape the increasingly brostep defined scene by utilizing house or techno influences, or even returning to that garage sound which originally influenced dubstep. Here is a post dubstep/future garage set featuring tracks of that period. Fond memories of living in SE London then :)',
    id: '15-07-09-post-dubstepfuture-garage',
  ),
  const MusicPost(
    title: 'Dubstep 2006 - 2008',
    date: '2015-03-29',
    description: 'An old school dubstep set comprising of tracks from 2006 to 2008. Not for fans of Brostep :p',
    id: '15-03-29',
  ),
  const MusicPost(
    title: '14-08-27 Dark Techno',
    date: '2014-08-27',
    description: 'Dark Techno set.',
    id: '14-08-27',
  ),
  const MusicPost(
    title: '14-04-21 Trap',
    date: '2014-04-21',
    description: 'Short Trap mix!',
    id: '14-04-21',
  ),
  const MusicPost(
    title: '13-10-06 Glitch Hop',
    date: '2013-10-06',
    description: 'A Glitch Hop set.',
    id: '13-10-06',
  ),
  const MusicPost(
    title: "13-10-01 Drum'n'Bass",
    date: '2013-10-01',
    description: "Short impromptu drum'n'bass set.",
    id: '13-10-01',
  ),
  const MusicPost(
    title: '13-03-02',
    date: '2013-03-02',
    description: "Drum'n'bass/Dubstep set for the coronation of the new gypsy king at the Kingdom of Tressillian!",
    id: '13-03-02',
  ),
];

final filmPosts = [
  const FilmPost(
    title: 'Here and then Gone',
    date: '2014-07-06', //TODO
    id: '102332210',
    previewUrl: 'https://i.vimeocdn.com/video/484328939_1920x1080.webp',
  ),
  const FilmPost(
    title: 'Забути тебе – це як дихати водою',
    date: '2013-09-12',
    id: '83915200',
    previewUrl: 'https://i.vimeocdn.com/video/460981623_1920x1080.webp',
  ),
  const FilmPost(
    title: 'Батьківщина',
    date: '2012-09-06',
    id: '50823302',
    previewUrl: 'https://i.vimeocdn.com/video/350247937_1920x1080.webp',
  ),
  const FilmPost(
    title: 'Вавилон',
    date: '2012-06-05',
    id: '43460162',
    previewUrl: 'https://i.vimeocdn.com/video/301784351_1920x1080.webp',
  ),
  const FilmPost(
    title: 'La Forêt Blanche',
    date: '2010-12-06',
    id: '109315017',
    previewUrl: 'https://i.vimeocdn.com/video/493247280_1920x1080.webp',
  ),
  const FilmPost(
    title: 'Данные Изгиб',
    date: '2010-03-06', //TODO
    id: '106413427',
    previewUrl: 'https://i.vimeocdn.com/video/489543438_1920x1080.webp',
  ),
];
