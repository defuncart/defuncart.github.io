abstract class WebsiteContent {
  static const home = _Home();

  static const apps = _Apps();

  static const music = _Music();

  static const packages = _Packages();

  static const about = _About();

  static const blog = _Blog();
}

class _Home {
  const _Home();

  final title = 'defuncart';
  final path = '/';

  final profileAsset = 'assets/home/profile.png';

  final logoAsset = 'assets/home/logo.png';

  final greeting = '👋 Hi, I\'m';

  final name = 'James Leahy';

  final tagline = 'Flutter Developer';
}

class _Apps {
  const _Apps();

  final title = 'Apps';
  final path = '/apps';

  final apps = const {
    AppModel(
      title: 'Der Die Das',
      description: 'A fun German articles quiz game.',
      icon: 'assets/apps/derdiedas/app_icon.png',
      github: 'https://github.com/defuncart/der_die_das',
      platforms: [AppPlatform.iOS, AppPlatform.android],
    ),
    AppModel(
      title: 'Shogi Proverbs',
      description: 'A mobile application containing 50 Shogi proverbs.',
      icon: 'assets/apps/shogiproverbs/app_icon.png',
      github: 'https://github.com/defuncart/shogi_proverbs',
      platforms: [AppPlatform.iOS, AppPlatform.android],
    ),
    AppModel(
      title: 'Bratacha',
      description: 'A fun flag quiz game as Gaeilge (and other languages)!',
      icon: 'assets/apps/bratacha/app_icon.png',
      github: 'https://github.com/defuncart/bratacha',
      platforms: [AppPlatform.iOS, AppPlatform.android],
    ),
    AppModel(
      title: 'Caoga caoga',
      description: 'A fun Irish vocabulary learning game.',
      icon: 'assets/apps/caogacaoga/app_icon.png',
      url: 'https://apps.apple.com/us/app/caoga-caoga-learn-irish/id1336431902',
      platforms: [AppPlatform.iOS, AppPlatform.android],
    ),
    AppModel(
      title: 'Game Saves Backup',
      description: 'A linux application to backup game saves.',
      icon: 'assets/apps/game_saves_backup/app_icon.png',
      github: 'https://github.com/defuncart/game_saves_backup',
      platforms: [AppPlatform.linux],
    ),
    AppModel(
      title: 'Non Steam Artwork',
      description: 'A steam deck tool to update artwork for non-steam programs.',
      icon: 'assets/apps/non_steam_artwork/app_icon.png',
      github: 'https://github.com/defuncart/non_steam_artwork',
      platforms: [AppPlatform.linux],
    ),
    AppModel(
      title: 'IP Location',
      description: 'A macOS Menu Bar application displaying the current ip address.',
      icon: 'assets/apps/ip_location/app_icon.png',
      github: 'https://github.com/defuncart/ip_location',
      platforms: [AppPlatform.macOS],
    ),
    AppModel(
      title: 'Download Manager',
      description: 'A simple download manager for Android.',
      icon: 'assets/apps/download_manager/app_icon.png',
      github: 'https://github.com/defuncart/download_manager',
      platforms: [AppPlatform.android],
    ),
    AppModel(
      title: 'QR Code Wallet',
      description: 'An application to scan & save QR codes.',
      icon: 'assets/apps/qr_code_wallet/app_icon.png',
      github: 'https://github.com/defuncart/qr_code_wallet',
      platforms: [AppPlatform.android],
    ),
    AppModel(
      title: 'Kifu Viewer',
      description: 'An application to view Shogi games by loading Kifu files.',
      icon: 'assets/apps/kifu_viewer/app_icon.png',
      github: 'https://github.com/defuncart/kifu_viewer',
      platforms: [AppPlatform.macOS, AppPlatform.windows, AppPlatform.linux, AppPlatform.web],
    ),
  };
}

class AppModel {
  const AppModel({
    required this.title,
    required this.description,
    required this.icon,
    this.url,
    this.github,
    this.platforms = const [],
  });

  final String title;
  final String description;
  final String icon;
  final String? url;
  final String? github;
  final List<AppPlatform> platforms;
}

enum AppPlatform {
  iOS,
  android,
  macOS,
  linux,
  windows,
  web,
}

class _Music {
  final title = 'Music';
  final path = '/music';

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

class MusicAlbumModel {
  const MusicAlbumModel({
    required this.title,
    required this.description,
    required this.relativeUrl,
    required this.redirectUrl,
    required this.artworkPath,
  });

  final String title;
  final String description;
  final String relativeUrl;
  final String redirectUrl;
  final String artworkPath;
}

class _Packages {
  final title = 'Packages';
  final path = '/package'; // packages throws an error

  const _Packages();

  final packages = const [
    PackageModel(
      title: 'flutter_pseudolocalizor',
      description:
          'A Pseudolocalization tool for Flutter and Dart which generates pseudo, nonsensical translations for multiple languages from a given English source.',
      pubDevUrl: 'https://pub.dev/packages/flutter_pseudolocalizor',
      gitHubUrl: 'https://github.com/defuncart/flutter_pseudolocalizor',
    ),
    PackageModel(
      title: 'arb_generator',
      description: 'A dart tool which generates ARB files from CSV files.',
      pubDevUrl: 'https://pub.dev/packages/arb_generator',
      gitHubUrl: 'https://github.com/defuncart/arb_generator',
    ),
    PackageModel(
      title: 'app_store_screenshots',
      description: 'A flutter tool to generate screenshots and other assets for app stores.',
      gitHubUrl: 'https://github.com/defuncart/app_store_screenshots',
    ),
    PackageModel(
      title: 'dart_test_utils',
      description: 'A dart tool containing test utils.',
      pubDevUrl: 'https://pub.dev/packages/dart_test_utils',
      gitHubUrl: 'https://github.com/defuncart/dart_test_utils',
    ),
    PackageModel(
      title: 'global_shortcuts',
      description: 'A macOS plugin which can register a callback for a global keyboard shortcut.',
      pubDevUrl: 'https://pub.dev/packages/global_shortcuts',
      gitHubUrl: 'https://github.com/defuncart/global_shortcuts',
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
      title: 'json_to_csv',
      description: 'A tool to convert multiple json files to csv.',
      gitHubUrl: 'https://github.com/defuncart/json_to_csv',
    ),
    PackageModel(
      title: 'flappy_translator',
      description: 'A tool which automatically generates Flutter localization resources from CSV and Excel files.',
      pubDevUrl: 'https://pub.dev/packages/flappy_translator',
      gitHubUrl: 'https://github.com/smartnsoft/FlappyTranslator',
    ),
    PackageModel(
      title: 'steamgriddb',
      description: 'A dart client for steamgriddb.com.',
      gitHubUrl: 'https://github.com/defuncart/steamgriddb',
    ),
    PackageModel(
      title: 'dart_code_coverage',
      description: 'A package with helpers for generating and editing code coverage reports in dart.',
      gitHubUrl: 'https://github.com/defuncart/dart_code_coverage',
    ),
    PackageModel(
      title: 'dart_dependencies_report',
      description: 'A package which generates a report of all a project\'s dependencies.',
      gitHubUrl: 'https://github.com/defuncart/dart_dependencies_report',
    ),
  ];
}

class PackageModel {
  const PackageModel({
    required this.title,
    required this.description,
    this.pubDevUrl,
    required this.gitHubUrl,
  });

  final String title;
  final String description;
  final String? pubDevUrl;
  final String gitHubUrl;
}

class _About {
  final title = 'About';
  final path = '/about';

  const _About();

  final traits = const [
    'App developer',
    'Flutter expert',
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
    'Cat lover',
    'Stout appreciator',
    'Berliner',
  ];

  final footer = 'Designed by James Leahy. Made with Jaspr. Hosted on GitHub Pages.';

  final socialMediaLinks = const [
    SocialLinkModel(
      assetpath: 'assets/about/social_links/email.png',
      url: 'mailto:defuncart@gmail.com',
    ),
    SocialLinkModel(
      assetpath: 'assets/about/social_links/github.png',
      url: 'https://github.com/defuncart/',
    ),
    SocialLinkModel(
      assetpath: 'assets/about/social_links/linkedin.png',
      url: 'https://www.linkedin.com/in/jamesjleahy/',
    ),
  ];
}

class SocialLinkModel {
  const SocialLinkModel({
    required this.assetpath,
    required this.url,
  });

  final String assetpath;
  final String url;
}

class _Blog {
  const _Blog();

  final title = 'Blog';
  final path = 'https://defuncart.com/blog';
}
