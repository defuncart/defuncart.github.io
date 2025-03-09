import 'package:defuncart_github_io/constants/content.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

typedef _LocalRoute = ({
  String label,
  String path,
  Target? target,
});

final _routes = <_LocalRoute>[
  (label: WebsiteContent.apps.title, path: WebsiteContent.apps.path, target: null),
  (label: WebsiteContent.music.title, path: WebsiteContent.music.path, target: null),
  (label: WebsiteContent.packages.title, path: WebsiteContent.packages.path, target: null),
  (label: WebsiteContent.about.title, path: WebsiteContent.about.path, target: null),
  (label: WebsiteContent.blog.title, path: WebsiteContent.blog.path, target: Target.blank),
];

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'fixed top-0 w-full bg-white', [
      div(classes: 'md:hidden', [
        const HeaderMobile(),
      ]),
      div(classes: 'max-md:hidden', [
        const HeaderDesktop(),
      ]),
    ]);
    // as header is fixed, add spacer below
    yield div(classes: 'h-[64px]', []);
  }
}

@client
@visibleForTesting
class HeaderMobile extends StatefulComponent {
  const HeaderMobile({
    super.key,
  });

  @override
  State createState() => HeaderMobileState();
}

@visibleForTesting
class HeaderMobileState extends State<HeaderMobile> {
  var isDrawerVisible = false;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield header(classes: 'm-4 pr-4 flex flex-row justify-end items-center', [
      button(
          // the character ☰ requires some tweeks to render similar to X
          classes: 'mt-[-8px] mr-[-8px] text-3xl text-text-regular font-bold leading-none',
          onClick: () => setState(() => isDrawerVisible = true),
          [
            text('☰'),
          ]),
    ]);

    yield div(
        classes: 'fixed top-0 right-0 w-${isDrawerVisible ? 'full' : '0'}  h-screen z-10 bg-primary duration-150',
        id: 'drawer',
        [
          div(classes: isDrawerVisible ? '' : 'hidden', [
            div(classes: 'flex flex-col', [
              header(classes: 'm-4 pr-4 flex flex-row justify-end items-center', [
                button(
                    classes: 'text-2xl text-white font-bold leading-none',
                    onClick: () => setState(() => isDrawerVisible = false),
                    [
                      text('X'),
                    ]),
              ]),
              div(classes: 'h-16', []),
              div(
                  classes: 'flex flex-col justify-center gap-8 text-3xl text-white text-center font-bold leading-none',
                  [
                    Link(
                      to: WebsiteContent.home.path,
                      child: text('Home'.toUpperCase()),
                    ),
                    for (final route in _routes)
                      Link(
                        to: route.path,
                        target: route.target,
                        child: text(route.label.toUpperCase()),
                      ),
                  ]),
            ]),
          ]),
        ]);
    // ?? when this comment is removed, transition no longer works :D
    // yield div(classes: 'inactive fixed w-0 h-screen bg-primary', id: 'drawer', []);
  }
}

@visibleForTesting
class HeaderDesktop extends StatelessComponent {
  const HeaderDesktop({
    super.key,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield header(classes: 'm-4 pr-4 flex justify-between items-center', [
      Link(
        to: '/',
        child: img(src: 'assets/home/logo.png'),
      ),
      div(classes: 'flex flex-row justify-end text-xl text-text-regular font-bold gap-x-8', [
        for (final route in _routes)
          Link(
            to: route.path,
            classes: 'hover:text-primary',
            target: route.target,
            child: text(route.label.toUpperCase()),
          ),
      ]),
    ]);
  }
}
