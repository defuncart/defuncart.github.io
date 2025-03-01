import 'package:defuncart_github_io/constants/content.dart';
import 'package:jaspr/jaspr.dart';

class AboutPage extends StatelessComponent {
  const AboutPage({super.key});

  static get path => WebsiteContent.about.path;

  String _indexToColor(int index) => switch (index % 3) {
        0 => 'bg-primary',
        1 => 'bg-text-regular',
        _ => 'bg-text-light',
      };

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'h-2', []);
    yield div(classes: 'flex flex-col items-center', [
      div(classes: 'flex flex-wrap gap-4 justify-around md:justify-start', [
        for (final (index, trait) in WebsiteContent.about.traits.indexed)
          div(classes: 'p-4 shadow-lg rounded-2xl ${_indexToColor(index)} text-l text-white', [
            text(trait),
          ]),
      ]),
      div(classes: 'h-16', []),
      div(classes: 'flex gap-8', [
        for (final socialLink in WebsiteContent.about.socialMediaLinks)
          a(href: socialLink.url, target: Target.blank, [
            img(src: socialLink.assetpath),
          ]),
      ]),
      div(classes: 'h-8', []),
      div(classes: 'text-m text-text-light', [text(WebsiteContent.about.footer)]),
    ]);
  }
}
