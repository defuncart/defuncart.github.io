import '../enums/category.dart';
import 'post.dart';

class MusicPost extends Post {
  const MusicPost({
    required String title,
    required String date,
    required this.id,
    required this.description,
  }) : super(
          title: title,
          date: date,
          category: Category.music,
        );
  final String description;

  final String id;
}
