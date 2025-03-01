import 'package:defuncart_github_io/components/header.dart';
import 'package:defuncart_github_io/constants/content.dart';
import 'package:defuncart_github_io/pages/about_page.dart';
import 'package:defuncart_github_io/pages/apps_page.dart';
import 'package:defuncart_github_io/pages/home_page.dart';
import 'package:defuncart_github_io/pages/music_page.dart';
import 'package:defuncart_github_io/pages/packages_page.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'min-h-screen', [
      const Header(),
      div(classes: 'mx-4 md:mx-8 lg:mx-16 xl:mx-32 2xl:mx-64 mb-4 md:mb-8', [
        Router(routes: [
          Route(
            path: HomePage.path,
            title: WebsiteContent.home.title,
            builder: (context, state) => const HomePage(),
          ),
          Route(
            path: AppsPage.path,
            title: WebsiteContent.apps.title,
            builder: (context, state) => const AppsPage(),
          ),
          Route(
            path: MusicPage.path,
            title: WebsiteContent.music.title,
            builder: (context, state) => const MusicPage(),
          ),
          Route(
            path: PackagesPage.path,
            title: WebsiteContent.packages.title,
            builder: (context, state) => const PackagesPage(),
          ),
          Route(
            path: AboutPage.path,
            title: WebsiteContent.about.title,
            builder: (context, state) => const AboutPage(),
          ),
        ]),
      ]),
    ]);
  }
}
