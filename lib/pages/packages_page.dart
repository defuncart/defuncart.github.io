import 'package:defuncart_github_io/constants/content.dart';
import 'package:jaspr/jaspr.dart';

class PackagesPage extends StatelessComponent {
  const PackagesPage({super.key});

  static get path => WebsiteContent.packages.path;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex flex-wrap gap-8 justify-around', [
      for (final package in WebsiteContent.packages.packages) PackageCard(package: package),
    ]);
  }
}

@visibleForTesting
class PackageCard extends StatelessComponent {
  const PackageCard({
    super.key,
    required this.package,
  });

  final PackageModel package;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(
        href: package.pubDevUrl ?? package.gitHubUrl,
        classes: 'p-4 shadow-lg rounded-md w-[350px]',
        target: Target.blank,
        [
          div(classes: 'grid cols-1 gap-4 place-items-center', [
            div(classes: 'text-xl md:text-2xl font-medium text-text-regular', [text(package.title)]),
            div(classes: 'text-s md:text-m font-light text-text-light text-center', [text(package.description)]),
          ]),
        ]);
  }
}
