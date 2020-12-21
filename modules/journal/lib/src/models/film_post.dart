import 'package:meta/meta.dart';

import '../enums/category.dart';
import 'post.dart';

class FilmPost extends Post {
  const FilmPost({
    @required String title,
    @required String date,
    @required List<String> tags,
    @required this.id,
    @required this.previewUrl,
  }) : super(
          title: title,
          date: date,
          category: Category.film,
          tags: tags,
        );

  final String id;

  final String previewUrl;
}
