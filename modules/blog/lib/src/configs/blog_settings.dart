import '../enums/category.dart';
import '../models/film_post.dart';
import '../models/music_post.dart';
import '../models/photography_post.dart';

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
  MusicPost(
    title: 'Post-Hardcore 2020',
    date: '2020-11-30',
    tags: [
      'StrawberryComplexity',
    ],
    description: 'A Post-Hardcore mix comprising of tracks from 2020.',
    id: 'post-hardcore-2020',
  ),
  MusicPost(
    title: 'Digital Hardcore 1994-1995',
    date: '2020-03-30', //TODO
    tags: [
      'StrawberryComplexity',
    ],
    description:
        'Digital hardcore is genre fusing hardcore punk and diverse electronic genres such as breakbeat, jungle and techno, while also drawing on heavy metal and noise music. ',
    id: 'digital-hardcore-1994-1995',
  ),
  MusicPost(
    title: 'Rise of Brostep',
    date: '2020-02-29',
    tags: [
      'StrawberryComplexity',
    ],
    description:
        "Brostep is a post-dubstep genre which received major commercial success between 2011 and 2014, especially in the US. Compared to dubstep's sub-bass wobbles and dub/garage UK beginnings, brostep is generally much more aggressive, focuses on the mid-range with tons and wobble and features heavy drops.",
    id: 'rise-of-brostep',
  ),
  MusicPost(
    title: 'Early Grime 2002 - 2007',
    date: '2019-02-13',
    tags: [
      'StrawberryComplexity',
    ],
    description:
        'Grime is a subgenre of electronic music which draws from a wide variety of influences, for instance UK Garage, Dancehall and Hip Hop.',
    id: 'early-grime-2002-2007',
  ),
  MusicPost(
    title: '16-03-03 Electro',
    date: '2016-03-03',
    tags: [
      'StrawberryComplexity',
    ],
    description:
        'Short and sweet electro mix featuring tracks from Arp Aubert, KiNK, Stardust, Throwing Snow, Percussions and more!',
    id: '16-03-03-electro',
  ),
  MusicPost(
    title: 'Techstep 1995 - 1998',
    date: '2015-10-08',
    tags: [
      'StrawberryComplexity',
    ],
    description:
        "Techstep was a subgenre of drum and bass popular in the late 90s. Characterized by dark synths and sci-fi tones, in its hay-day, Techstep was in fact the leading sound of DnB. The subgenre started to loose traction around the start of the new millennium and later matured into Neofunk. Here is a mix comprising of my favorite tracks over the subgenre's first four and most influential years.",
    id: 'techstep-1995-1999',
  ),
  MusicPost(
    title: '15-07-09 Post Dubstep/Future Garage',
    date: '2015-07-09',
    tags: [
      'StrawberryComplexity',
    ],
    description:
        'From 2009 to 2012 some dubstep producers tried to escape the increasingly brostep defined scene by utilizing house or techno influences, or even returning to that garage sound which originally influenced dubstep. Here is a post dubstep/future garage set featuring tracks of that period. Fond memories of living in SE London then :)',
    id: '15-07-09-post-dubstepfuture-garage',
  ),
  MusicPost(
    title: 'Dubstep 2006 - 2008',
    date: '2015-03-29',
    tags: [
      'StrawberryComplexity',
    ],
    description: 'An old school dubstep set comprising of tracks from 2006 to 2008. Not for fans of Brostep :p',
    id: '15-03-29',
  ),
  MusicPost(
    title: '14-08-27 Dark Techno',
    date: '2014-08-27',
    tags: [
      'StrawberryComplexity',
    ],
    description: 'Dark Techno set.',
    id: '14-08-27',
  ),
  MusicPost(
    title: '14-04-21 Trap',
    date: '2014-04-21',
    tags: [
      'StrawberryComplexity',
    ],
    description: 'Short Trap mix!',
    id: '14-04-21',
  ),
  MusicPost(
    title: '13-10-06 Glitch Hop',
    date: '2013-10-06',
    tags: [
      'StrawberryComplexity',
    ],
    description: 'A Glitch Hop set.',
    id: '13-10-06',
  ),
  MusicPost(
    title: "13-10-01 Drum'n'Bass",
    date: '2013-10-01',
    tags: [
      'StrawberryComplexity',
    ],
    description: "Short impromptu drum'n'bass set.",
    id: '13-10-01',
  ),
  MusicPost(
    title: '13-03-02',
    date: '2013-03-02',
    tags: [
      'StrawberryComplexity',
    ],
    description: "Drum'n'bass/Dubstep set for the coronation of the new gypsy king at the Kingdom of Tressillian!",
    id: '13-03-02',
  ),
];

final filmPosts = [
  FilmPost(
    title: 'Here and then Gone',
    date: '2014-07-06', //TODO
    tags: [
      'GrayDawn',
      'Berlin',
    ],
    id: '102332210',
    previewUrl: 'https://i.vimeocdn.com/video/484328939_1920x1080.webp',
  ),
  FilmPost(
    title: 'Забути тебе – це як дихати водою',
    date: '2013-09-12',
    tags: [
      'GrayDawn',
    ],
    id: '83915200',
    previewUrl: 'https://i.vimeocdn.com/video/460981623_1920x1080.webp',
  ),
  FilmPost(
    title: 'Батьківщина',
    date: '2012-09-06',
    tags: [
      'GrayDawn',
    ],
    id: '50823302',
    previewUrl: 'https://i.vimeocdn.com/video/350247937_1920x1080.webp',
  ),
  FilmPost(
    title: 'Вавилон',
    date: '2012-06-05',
    tags: [
      'GrayDawn',
    ],
    id: '43460162',
    previewUrl: 'https://i.vimeocdn.com/video/301784351_1920x1080.webp',
  ),
  FilmPost(
    title: 'La Forêt Blanche',
    date: '2010-12-06',
    tags: [
      'StrawberryComplexity',
      'postdigital',
      'databending',
      'datamoshing',
    ],
    id: '109315017',
    previewUrl: 'https://i.vimeocdn.com/video/493247280_1920x1080.webp',
  ),
  FilmPost(
    title: 'Данные Изгиб',
    date: '2010-03-06', //TODO
    tags: [
      'postdigital',
      'databending',
      'datamoshing',
    ],
    id: '106413427',
    previewUrl: 'https://i.vimeocdn.com/video/489543438_1920x1080.webp',
  ),
];

final photographyPosts = [
  PhotographyPost(
    date: '2020-09-13',
    tags: [
      'StreetArt',
      'Berlin',
    ],
    url:
        'https://instagram.ftxl3-1.fna.fbcdn.net/v/t51.2885-15/e35/119465465_155530362894600_2565493723585497307_n.jpg?_nc_ht=instagram.ftxl3-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=QTOurC6qmdwAX_ips-u&tp=1&oh=a52db8ce195f5391e78cf4a887f7f81a&oe=5FFED5E1',
  ),
  PhotographyPost(
    date: '2020-06-01',
    tags: [
      'Berlin',
    ],
    url:
        'https://instagram.ftxl3-1.fna.fbcdn.net/v/t51.2885-15/e35/101648865_587439231903804_6465916985369765694_n.jpg?_nc_ht=instagram.ftxl3-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=IdIiI0rXn-wAX8mrbV1&tp=1&oh=15dea311dc9a7d7314be3d0084f958f7&oe=5FFEF00A',
  ),
  PhotographyPost(
    date: '2019-08-12',
    tags: [
      'Travel',
    ],
    url:
        'https://instagram.ftxl3-2.fna.fbcdn.net/v/t51.2885-15/e35/68742684_1080585942140343_6704894132077725629_n.jpg?_nc_ht=instagram.ftxl3-2.fna.fbcdn.net&_nc_cat=103&_nc_ohc=cr-Hv-iGBLUAX9EnnBN&tp=1&oh=fca66968a3db4ac9a80117c4e0101403&oe=5FFD99AE',
  ),
];
