import 'package:defuncart_github_io/constants/content.dart';
import 'package:jaspr/jaspr.dart';

class AppsPage extends StatelessComponent {
  const AppsPage({super.key});

  static get path => WebsiteContent.apps.path;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex flex-wrap gap-8 justify-around', [
      for (final app in WebsiteContent.apps.apps) AppCard(appModel: app),
    ]);
  }
}

@visibleForTesting
class AppCard extends StatelessComponent {
  const AppCard({
    super.key,
    required this.appModel,
  });

  final AppModel appModel;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'p-4 shadow-lg rounded-md w-[325px] h-[350px]', [
      a(href: appModel.url ?? appModel.github!, target: Target.blank, [
        div(classes: 'grid cols-1 gap-4 place-items-center', [
          div(classes: 'text-2xl font-medium text-text-regular', [text(appModel.title)]),
          img(src: appModel.icon, classes: 'h-[200px] w-[200px] rounded-[44px]'),
          div(classes: 'text-lg font-light text-text-regular text-center', [text(appModel.description)]),
        ]),
      ])
    ]);
  }
}
