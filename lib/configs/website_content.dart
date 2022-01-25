import 'package:defuncart_github_io/models/app_model.dart';
import 'package:defuncart_github_io/models/music_album_model.dart';
import 'package:defuncart_github_io/models/nav_bar_item_model.dart';
import 'package:defuncart_github_io/models/package_model.dart';
import 'package:defuncart_github_io/models/social_link_model.dart';
import 'package:defuncart_github_io/widgets/screens/screens.dart';

abstract class WebsiteContent {
  static const navBarItems = [
    NavBarItemModel(
      title: _Apps.title,
      url: AppsScreen.relativeUrl,
    ),
    NavBarItemModel(
      title: _Music.title,
      url: MusicScreen.relativeUrl,
    ),
    NavBarItemModel(
      title: _Packages.title,
      url: PackagesScreen.relativeUrl,
    ),
    NavBarItemModel(
      title: _About.title,
      url: AboutScreen.relativeUrl,
    ),
    NavBarItemModel(
      title: 'Journal',
      url: JournalScreen.relativeUrl,
    ),
  ];

  static const home = _Home();

  static const apps = _Apps();

  static const music = _Music();

  static const packages = _Packages();

  static const about = _About();
}

class _Home {
  const _Home();

  final profileAsset = 'assets/home/profile.png';

  final logoAsset = 'assets/home/logo.png';

  final greeting = "👋 Hi, I'm";

  final name = 'James Leahy';

  final tagline = 'Flutter Developer';
}

class _Apps {
  static const title = 'Apps';

  const _Apps();

  final apps = const {
    CaogaCaogaScreen.relativeUrl: AppModel(
      title: 'Caoga caoga',
      description: 'A fun Irish vocabulary learning game.',
      icon: 'assets/apps/caogacaoga/icon.png',
      relativeUrl: CaogaCaogaScreen.relativeUrl,
      platforms: PlatformsModel(
        appStoreLink: 'https://itunes.apple.com/ie/app/id1336431902?mt=8',
        googlePlayLink: 'https://play.google.com/store/apps/details?id=com.defuncart.caogacaoga',
      ),
    ),
    DerDieDasScreen.relativeUrl: AppModel(
      title: 'Der Die Das',
      description: 'A fun German articles quiz game.',
      icon: 'assets/apps/derdiedas/icon.png',
      relativeUrl: DerDieDasScreen.relativeUrl,
      platforms: PlatformsModel(
        // appStoreLink: 'https://testflight.apple.com/join/GCX1tFIU',
        appStoreLink: null,
        googlePlayLink: 'https://play.google.com/store/apps/details?id=com.defuncart.derdiedas',
      ),
    ),
  };
}

class _Music {
  static const title = 'Music';

  const _Music();

  // final content =
  // 'James Leahy is an Irish-born, Berlin-based multimedia artist, performer and composer. As an audiovisual artist, James has performed internationally in Ireland, Germany, Italy, Poland, the United Kingdom and Ukraine. His artwork has been exhibited in Ireland and the United Kingdom.';

  final albums = const [
    ..._GrayDawn.albums,
    ..._StrawberryComplexity.albums,
  ];
}

class _GrayDawn {
  // final content =
  // 'Gray Dawn is the main musical output of James Leahy, an Irish-born, Berlin-based multimedia artist, performer and composer. James graduated with Distinction in Master of Fine Art from Goldsmiths College, University of London, where his medium was live audiovisual performance, while he also holds a background in Electroacoustic Composition from the University of Limerick.';

  static const albums = [
    MusicAlbumModel(
      title: 'Die Neumayer',
      description:
          'Inspired by early 80s horror films, Die Neumayer is a cinematic narrative onboard a research station in Antarctica in which all personnel are missing and a deadly predator is on the loose...',
      relativeUrl: '/music/graydawn/die-neumayer',
      redirectUrl: 'https://graydawn.bandcamp.com/album/die-neumayer',
      artworkPath: 'assets/music/gray_dawn/dieneumayer.jpg',
    ),
    MusicAlbumModel(
      title: 'Czternaście części a​-​moll',
      description:
          'Czternaście części a-moll (na fortepian, kwartet smyczkowy i live elekronika) is a collection of fourteen pieces in A-minor for piano, string quartet and live electronics.',
      relativeUrl: '/music/graydawn/czternascie-czeci-a-moll',
      redirectUrl: 'https://graydawn.bandcamp.com/album/czterna-cie-cz-ci-a-moll',
      artworkPath: 'assets/music/gray_dawn/czternascieczeciamoll.jpg',
    ),
    MusicAlbumModel(
      title: '.​.​.​für einen imaginären Film',
      description:
          'Fusing influences from electronic to contemporary classical to industrial hip-hop, ...für einen imaginären Film follows the cinematic narrative of an imaginary film. As a nod to the days of cassette tapes, the album is divided into sides A and B.',
      relativeUrl: '/music/graydawn/fur-einen-imaginaren-film',
      redirectUrl: 'https://graydawn.bandcamp.com/album/f-r-einen-imagin-ren-film',
      artworkPath: 'assets/music/gray_dawn/fureinenimaginarenfilm.jpg',
    ),
    MusicAlbumModel(
      title: 'Забути тебе – це як дихати водою',
      description:
          'Accompanying, originally composed score for Забути тебе – це як дихати водою, a live audiovisual performance featuring manipulations of Sergei Parajanov’s Тіні забутих предків (1964). The short film can be viewed online here: vimeo.com/83915200',
      relativeUrl: '/music/graydawn/zabity-tebe-tse-jak-dihaty-vodoju',
      redirectUrl: 'https://graydawn.bandcamp.com/album/--5',
      artworkPath: 'assets/music/gray_dawn/zabitytebetsejakdihatyvodoju.jpg',
    ),
    MusicAlbumModel(
      title: 'П',
      description:
          'П іs an audiovisual performance developed in part for James’ MFA. The work consists of six tracks within the self-coined industrial-gothic-orchestral-electronic genre, and a heavily manipulated visual accompaniment based on an edited narrative from Аэлита (1924). A recent performance can be seen here: vimeo.com/70717757',
      relativeUrl: '/music/graydawn/pi',
      redirectUrl: 'https://graydawn.bandcamp.com/album/--4',
      artworkPath: 'assets/music/gray_dawn/pi.jpg',
    ),
    MusicAlbumModel(
      title: 'Батьківщина',
      description:
          'Accompanying, originally composed score for piano, mandolin and laptop to Батьківщина, a short film and Live Cinema performance edited from Alexander Dovzhenko’s Ukrainian trilogy, Звенигора (Zvenigora, 1928), Арсенал (Arsenal, 1928), and Земля (Earth, 1930). Батьківщина can be watched online here: vimeo.com/50823302',
      relativeUrl: '/music/graydawn/batkivshchyna',
      redirectUrl: 'https://graydawn.bandcamp.com/album/--2',
      artworkPath: 'assets/music/gray_dawn/batkivshchyna.jpg',
    ),
    MusicAlbumModel(
      title: 'Вавилон',
      description:
          'Accompanying, originally composed score for guitar, orchestra and laptop for Вавилон, a self-edited short-film based on Fritz Lang’s Metropolis (1928). The short film can be viewed online here: vimeo.com/43460162',
      relativeUrl: '/music/graydawn/vavilon',
      redirectUrl: 'https://graydawn.bandcamp.com/album/-',
      artworkPath: 'assets/music/gray_dawn/vavilon.jpg',
    ),
    MusicAlbumModel(
      title: 'The Light of Day',
      description:
          'A limited edition of fifty physical copies, numbered and signed by the artist, are available for £2 (includes The Light of Day). Contact defuncart@gmail.com for more information.',
      relativeUrl: '/music/graydawn/the-light-of-day',
      redirectUrl: 'https://graydawn.bandcamp.com/album/the-light-of-day',
      artworkPath: 'assets/music/gray_dawn/thelightofday.jpg',
    ),
    MusicAlbumModel(
      title: 'The Dark of Night',
      description:
          'A limited edition of fifty physical copies, numbered and signed by the artist, are available for £2 (includes The Light of Day). Contact defuncart@gmail.com for more information.',
      relativeUrl: '/music/graydawn/the-dark-of-night',
      redirectUrl: 'https://graydawn.bandcamp.com/album/the-dark-of-night',
      artworkPath: 'assets/music/gray_dawn/thedarkofnight.jpg',
    ),
  ];
}

class _StrawberryComplexity {
  // final content = 'Strawberry Complexity is an orchestral pop noise music project and the DJ alias of James Leahy.';

  static const albums = [
    MusicAlbumModel(
      title: 'This is Pop Music',
      description: '',
      relativeUrl: '/music/strawberrycomplexity/this-is-pop-music',
      redirectUrl: 'https://strawberrycomplexity.bandcamp.com/',
      artworkPath: 'assets/music/strawberry_complexity/thisispopmusic.jpg',
    ),
  ];
}

class _Packages {
  static const title = 'Packages';

  const _Packages();

  final dartAssetpath = 'assets/common/icons/dart.png';
  final gitHubAssetpath = 'assets/common/social_links/github.png';

  final packages = const [
    PackageModel(
      title: 'flutter_pseudolocalizor',
      description:
          'A Pseudolocalization tool for Flutter and Dart which generates pseudo, nonsensical translations for multiple languages from a given English source.',
      pubDevUrl: 'https://pub.dev/packages/flutter_pseudolocalizor',
      gitHubUrl: 'https://github.com/defuncart/flutter_pseudolocalizor',
    ),
    PackageModel(
      title: 'shogi',
      description: 'A simple shogi engine for Dart and Flutter.',
      pubDevUrl: 'https://pub.dev/packages/shogi',
      gitHubUrl: 'https://github.com/defuncart/shogi',
    ),
    PackageModel(
      title: 'flutter_shogi_board',
      description:
          'A shogi board widget for Flutter. This widget can be used to render static game board positions, tsume problems or shogi castles.',
      pubDevUrl: 'https://pub.dev/packages/flutter_shogi_board',
      gitHubUrl: 'https://github.com/defuncart/flutter_shogi_board',
    ),
    PackageModel(
      title: 'flappy_translator',
      description: 'A tool which automatically generates Flutter localization resources from CSV and Excel files.',
      pubDevUrl: 'https://pub.dev/packages/flappy_translator',
      gitHubUrl: 'https://github.com/smartnsoft/FlappyTranslator',
    ),
    PackageModel(
      title: 'dart_dependencies_report',
      description: "A package which generates a report of all a project's dependencies.",
      pubDevUrl: '',
      gitHubUrl: 'https://github.com/defuncart/dart_dependencies_report',
    ),
    PackageModel(
      title: 'dart_code_coverage',
      description: 'A package with helpers for generating and editing code coverage reports in dart.',
      pubDevUrl: '',
      gitHubUrl: 'https://github.com/defuncart/dart_code_coverage',
    ),
  ];
}

class _About {
  static const title = 'About';

  const _About();

  final traits = const [
    'App developer',
    'Flutter specialist',
    'Ex-Unity',
    'Ex-iOS',
    'Multi-media artist',
    'Music composer',
    'Open source advocate',
    'Creative coder',
    'Backpacker',
    'DJ',
    'Hobby photographer',
    'Multi-instrumentalist',
    'Video editor',
    'Educator',
    'Gamer',
    'Skateboarder',
    'Shogi enthusiast',
    'Backgammon strategist',
    'Stout appreciator',
    'Berliner',
  ];

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
