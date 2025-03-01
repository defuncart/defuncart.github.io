import 'package:defuncart_github_io/app.dart';
import 'package:defuncart_github_io/jaspr_options.dart';
import 'package:jaspr/server.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  runApp(
    Document(
      title: 'defuncart',
      meta: const {
        'description': 'The personal website of James Leahy.',
        'keywords': 'defuncart james leahy flutter mobile app developer',
        'author': 'defuncart',
      },
      head: [
        link(href: 'styles.css', rel: 'stylesheet'),
      ],
      styles: [
        css.import('https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap'),
        css('html, body').styles(fontFamily: const FontFamily.list([FontFamily('Open Sans')]))
      ],
      body: const App(),
    ),
  );
}
