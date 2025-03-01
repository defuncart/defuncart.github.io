import 'package:defuncart_github_io/constants/content.dart';
import 'package:jaspr/jaspr.dart';

class HomePage extends StatelessComponent {
  const HomePage({super.key});

  static get path => WebsiteContent.home.path;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    // h-full does not work - calculate manually
    // although header is 64px, an extra 1px is required
    yield div(classes: 'h-[calc(100vh-65px)]', [
      // spacer
      div(classes: 'h-[10vh] md:h-1/4', []),
      div(classes: 'flex flex-col gap-12 lg:flex-row lg:gap-16 lg:items-center place-self-center', [
        img(
          classes: 'place-self-center lg:place-self-end rounded-full w-56 h-56',
          src: WebsiteContent.home.profileAsset,
        ),
        div(
          classes: 'place-items-center',
          [
            div(classes: 'text-3xl md:text-4xl font-light text-text-regular', [text(WebsiteContent.home.greeting)]),
            div(classes: 'h-2', []),
            div(
                classes: 'text-5xl md:text-6xl font-medium text-primary text-center',
                [text(WebsiteContent.home.name.toUpperCase())]),
            div(classes: 'h-1', []),
            div(classes: 'text-xl md:text-2xl font-light text-text-light', [text(WebsiteContent.home.tagline)]),
          ],
        ),
      ]),
      div(classes: 'h-8 lg:h-16', []),
      div(classes: 'place-self-center mx-8 md:mx-0', [
        p(classes: 'text-m font-light text-text-regular', [
          text('At defuncart I build innovative language learning '),
          a(classes: 'font-medium text-primary hover:font-semibold', href: WebsiteContent.apps.path, [
            text('apps'),
          ]),
          text(', publish dart and flutter '),
          a(classes: 'font-medium text-primary hover:font-semibold', href: WebsiteContent.packages.path, [
            text('packages'),
          ]),
          text(' and release electronic '),
          a(classes: 'font-medium text-primary hover:font-semibold', href: WebsiteContent.music.path, [
            text('music'),
          ]),
          text('.'),
        ]),
      ]),
    ]);
  }
}
