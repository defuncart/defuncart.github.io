import '../enums/category.dart';
import '../models/film_post.dart';
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
  Category.tech: [
    'Flutter',
  ],
  Category.photography: [
    'StreetArt',
    'Travel',
    'Berlin',
  ],
};

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
    date: '2013-09-06', //TODO
    tags: [
      'GrayDawn',
    ],
    id: '83915200',
    previewUrl: 'https://i.vimeocdn.com/video/460981623_1920x1080.webp',
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
