import '../enums/category.dart';
import 'post.dart';

class PhotographyPost extends Post {
  const PhotographyPost({
    required String date,
    required List<String> tags,
    required this.assetPath,
  }) : super(
          date: date,
          category: Category.photography,
          tags: tags,
        );

  final String assetPath;
}
