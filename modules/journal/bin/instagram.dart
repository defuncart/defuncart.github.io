import 'dart:convert';
import 'dart:io';

void main() async {
  // const url = 'https://www.instagram.com/likespinninplates/?__a=1';
  // final request = await HttpClient().getUrl(Uri.parse(url));
  // final response = await request.close();

  final data = jsonDecode(await File.fromUri(Uri.parse('modules/journal/bin/_content.json')).readAsString());

  final pictures = data['graphql']['user']['edge_owner_to_timeline_media']['edges'];

  var pubspec = await File('modules/journal/pubspec.yaml').readAsLines();
  pubspec = pubspec.sublist(0, pubspec.indexOf('flutter:'));
  pubspec.add('flutter:');
  pubspec.add('  assets:');

  final sb = StringBuffer('part of \'blog_settings.dart\';');
  sb.writeln('\n');
  sb.writeln('final photographyPosts = [');

  for (final picture in pictures) {
    final pictureUrl = picture['node']['display_url'];
    final timestamp = picture['node']['taken_at_timestamp'];
    final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000).toString().split(' ').first;

    final request = await HttpClient().getUrl(Uri.parse(pictureUrl));
    final response = await request.close();
    await response.pipe(File('modules/journal/lib/assets/photography/$dateTime.png').openWrite());

    sb.writeln('\tPhotographyPost(');
    sb.writeln('\t\tdate: \'$dateTime\',');
    sb.writeln('\t\assetPath: \'assets/photography/$dateTime.png\',');
    sb.writeln('\t),');

    pubspec.add('    - packages/journal/assets/photography/$dateTime.png');
  }

  sb.writeln('];');

  var file = await File('modules/journal/lib/src/configs/blog_settings_photography.part.dart').create();
  await file.writeAsString(sb.toString());

  pubspec.add('');
  final pubspecContents = pubspec.reduce((value, element) => '$value\n$element');
  await File('modules/journal/pubspec.yaml').writeAsString(pubspecContents);
}
