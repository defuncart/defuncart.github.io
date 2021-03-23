import '../enums/category.dart';
import 'post.dart';

class FilmPost extends Post {
  const FilmPost({
    required String title,
    required String date,
    required this.id,
    required this.previewUrl,
  }) : super(
          title: title,
          date: date,
          category: Category.film,
        );

  final String id;

  final String previewUrl;
}
