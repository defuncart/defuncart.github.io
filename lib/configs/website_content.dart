import 'package:defuncart_github_io/models/music_act_model.dart';
import 'package:defuncart_github_io/models/music_album_model.dart';
import 'package:defuncart_github_io/models/nav_bar_item_model.dart';
import 'package:defuncart_github_io/models/social_link_model.dart';
import 'package:defuncart_github_io/widgets/screens/about/about_screen.dart';
import 'package:defuncart_github_io/widgets/screens/screens.dart';

abstract class WebsiteContent {
  static const userName = 'James\nLeahy';

  static const navBarItems = [
    NavBarItemModel(
      title: _Music.title,
      url: MusicScreen.relativeUrl,
    ),
    NavBarItemModel(
      title: _About.title,
      url: AboutScreen.relativeUrl,
    ),
  ];

  static const home = _Home();

  static const music = _Music();

  static const about = _About();
}

class _Home {
  const _Home();

  final profileAsset = 'assets/home/profile.png';
}

class _Music {
  static const title = 'Music';

  const _Music();

  final content = 'James Leahy is an Irish-born, Berlin-based multimedia artist, performer and composer.';

  final acts = const [
    MusicActModel(
      title: _GrayDawn.title,
      relativeUrl: GrayDawnScreen.relativeUrl,
      artworkPath: 'assets/music/graydawn.png',
    ),
    MusicActModel(
      title: _StrawberryComplexity.title,
      relativeUrl: StrawberryComplexityScreen.relativeUrl,
      artworkPath: 'assets/music/strawberrycomplexity.png',
    ),
  ];

  final grayDawn = const _GrayDawn();

  final strawberryComplexity = const _StrawberryComplexity();
}

class _GrayDawn {
  static const title = 'Gray Dawn';

  const _GrayDawn();

  final content =
      'Gray Dawn is the main musical output of James Leahy, an Irish-born, Berlin-based multimedia artist, performer and composer. James  graduated with Distinction in Master of Fine Art from Goldsmiths College, University of London, where his medium was live audiovisual performance, while he also holds a background in Electroacoustic Composition from the University of Limerick.';

  final albums = const [
    MusicAlbumModel(
      title: 'Die Neumayer',
      description:
          'Inspired by early 80s horror films, Die Neumayer is a cinematic narrative onboard a research station in Antarctica in which all personnel are missing and a deadly predator is on the loose...',
      relativeUrl: '/music/graydawn/die-neumayer',
      redirectUrl: 'https://graydawn.bandcamp.com/album/die-neumayer',
      artworkUrl: 'https://f4.bcbits.com/img/a2572849150_16.jpg',
    ),
    MusicAlbumModel(
      title: 'Czternaście części a​-​moll',
      description:
          'Czternaście części a-moll (na fortepian, kwartet smyczkowy i live elekronika) is a collection of fourteen pieces in A-minor for piano, string quartet and live electronics.',
      relativeUrl: '/music/graydawn/czternascie-czeci-a-moll',
      redirectUrl: 'https://graydawn.bandcamp.com/album/czterna-cie-cz-ci-a-moll',
      artworkUrl: 'https://f4.bcbits.com/img/a2617889452_16.jpg',
    ),
    MusicAlbumModel(
      title: '.​.​.​für einen imaginären Film',
      description:
          'Fusing influences from electronic to contemporary classical to industrial hip-hop, ...für einen imaginären Film follows the cinematic narrative of an imaginary film. As a nod to the days of cassette tapes, the album is divided into sides A and B.',
      relativeUrl: '/music/graydawn/fur-einen-imaginaren-film',
      redirectUrl: 'https://graydawn.bandcamp.com/album/f-r-einen-imagin-ren-film',
      artworkUrl: 'https://f4.bcbits.com/img/a1243378386_16.jpg',
    ),
    MusicAlbumModel(
      title: 'Забути тебе – це як дихати водою',
      description:
          'Accompanying, originally composed score for Забути тебе – це як дихати водою, a live audiovisual performance featuring manipulations of Sergei Parajanov’s Тіні забутих предків (1964). The short film can be viewed online here: vimeo.com/83915200',
      relativeUrl: '/music/graydawn/zabity-tebe-tse-jak-dihaty-vodoju',
      redirectUrl: 'https://graydawn.bandcamp.com/album/--5',
      artworkUrl: 'https://f4.bcbits.com/img/a1049691118_16.jpg',
    ),
    MusicAlbumModel(
      title: 'П',
      description:
          'П іs an audiovisual performance developed in part for James’ MFA. The work consists of six tracks within the self-coined industrial-gothic-orchestral-electronic genre, and a heavily manipulated visual accompaniment based on an edited narrative from Аэлита (1924). A recent performance can be seen here: vimeo.com/70717757',
      relativeUrl: '/music/graydawn/pi',
      redirectUrl: 'https://graydawn.bandcamp.com/album/--4',
      artworkUrl: 'https://f4.bcbits.com/img/a3851325714_16.jpg',
    ),
    MusicAlbumModel(
      title: 'Батьківщина',
      description:
          'Accompanying, originally composed score for piano, mandolin and laptop to Батьківщина, a short film and Live Cinema performance edited from Alexander Dovzhenko’s Ukrainian trilogy, Звенигора (Zvenigora, 1928), Арсенал (Arsenal, 1928), and Земля (Earth, 1930). Батьківщина can be watched online here: vimeo.com/50823302',
      relativeUrl: '/music/graydawn/batkivshchyna',
      redirectUrl: 'https://graydawn.bandcamp.com/album/--2',
      artworkUrl: 'https://f4.bcbits.com/img/a2519726181_16.jpg',
    ),
    MusicAlbumModel(
      title: 'Вавилон',
      description:
          'Accompanying, originally composed score for guitar, orchestra and laptop for Вавилон, a self-edited short-film based on Fritz Lang’s Metropolis (1928). The short film can be viewed online here: vimeo.com/43460162',
      relativeUrl: '/music/graydawn/vavilon',
      redirectUrl: 'https://graydawn.bandcamp.com/album/-',
      artworkUrl: 'https://f4.bcbits.com/img/a1510708443_16.jpg',
    ),
    MusicAlbumModel(
      title: 'The Light of Day',
      description:
          'A limited edition of fifty physical copies, numbered and signed by the artist, are available for £2 (includes The Light of Day). Contact defuncart@gmail.com for more information.',
      relativeUrl: '/music/graydawn/the-light-of-day',
      redirectUrl: 'https://graydawn.bandcamp.com/album/the-light-of-day',
      artworkUrl: 'https://f4.bcbits.com/img/a0847593227_16.jpg',
    ),
    MusicAlbumModel(
      title: 'The Dark of Night',
      description:
          'A limited edition of fifty physical copies, numbered and signed by the artist, are available for £2 (includes The Light of Day). Contact defuncart@gmail.com for more information.',
      relativeUrl: '/music/graydawn/the-dark-of-night',
      redirectUrl: 'https://graydawn.bandcamp.com/album/the-dark-of-night',
      artworkUrl: 'https://f4.bcbits.com/img/a3503162987_16.jpg',
    ),
  ];
}

class _StrawberryComplexity {
  static const title = 'Strawberry Complexity';

  const _StrawberryComplexity();

  final content = 'Strawberry Complexity is an orchestral pop noise music project and the DJ alias of James Leahy.';

  final albums = const [
    MusicAlbumModel(
      title: 'This is Pop Music',
      description: '',
      relativeUrl: '/music/strawberrycomplexity/this-is-pop-music',
      redirectUrl: 'https://strawberrycomplexity.bandcamp.com/',
      artworkUrl: 'https://f4.bcbits.com/img/a2144420344_16.jpg',
    ),
  ];

  final mixcloudMixIds = const [
    'digital-hardcore-1994-1995',
    'rise-of-brostep',
    'early-grime-2002-2007',
    '16-03-03-electro',
    'techstep-1995-1999',
    '15-07-09-post-dubstepfuture-garage',
    '15-03-29',
    '14-08-27',
    '14-04-21',
    '13-10-06',
    '13-10-01',
    '13-03-02',
  ];
}

class _About {
  static const title = 'About';

  const _About();

  final content1 =
      'James Leahy is a Mobile App and Game Developer who has shipped successful titles to the App Store. He is specialized in Flutter, previously worked as Unity Game Developer and iOS App Developer and has a background in digital art and music composition.';

  final content2 =
      'An advent of open source and active member of the Flutter community, James has released five packages on pub.dev, contributing to numerous others and has shared countless projects online.';

  final content3 =
      'James is passionate about language learning and creative coding, having previously created custom applications for live audiovisual performance and language learning. In his spare time, he develops innovative language learning games.';

  final content4 =
      'As an audiovisual artist, James has performed internationally in Ireland, Germany, Italy, Poland, the United Kingdom and Ukraine. His artwork has been exhibited in Ireland and the United Kingdom.';

  final content5 =
      'James is an active educator who often conducts workshops within the Creative Coding sphere, especially Programming for Artists, while giving talks at Software Development Conferences when possible.';

  final footer = 'Designed by James Leahy. Made with Flutter. Hosted on GitHub Pages.';

  final socialMediaLinks = const [
    SocialLinkModel(
      assetpath: 'assets/common/social_links/email.png',
      url: 'mailto:defuncart@gmail.com',
    ),
    SocialLinkModel(
      assetpath: 'assets/common/social_links/github.png',
      url: 'https://github.com/defuncart/',
    ),
    SocialLinkModel(
      assetpath: 'assets/common/social_links/linkedin.png',
      url: 'https://www.linkedin.com/in/jamesjleahy/',
    ),
    SocialLinkModel(
      assetpath: 'assets/common/social_links/twitter.png',
      url: 'https://twitter.com/defuncart',
    ),
  ];

  final resumeAssetpath = 'assets/common/social_links/resume.png';
}
