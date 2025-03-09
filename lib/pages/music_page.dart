import 'package:defuncart_github_io/constants/content.dart';
import 'package:jaspr/jaspr.dart';

class MusicPage extends StatelessComponent {
  const MusicPage({super.key});

  static get path => WebsiteContent.music.path;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'flex flex-wrap gap-8 justify-around',
      [
        for (final album in WebsiteContent.music.albums) MusicCard(album: album),
      ],
    );
  }
}

@visibleForTesting
class MusicCard extends StatelessComponent {
  const MusicCard({
    super.key,
    required this.album,
  });

  final MusicAlbumModel album;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield a(href: album.redirectUrl, target: Target.blank, [
      div(classes: 'w-[250px]', [
        img(
          src: album.artworkPath,
          width: 250,
          height: 250,
        ),
        div(classes: 'h-2', []),
        p(
          classes: 'text-s italic text-center text-text-light',
          [text(album.title)],
        ),
      ])
    ]);
  }
}
