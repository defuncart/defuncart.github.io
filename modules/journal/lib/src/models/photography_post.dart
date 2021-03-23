import '../enums/category.dart';
import 'post.dart';

class PhotographyPost extends Post {
  const PhotographyPost({
    required String date,
    required this.assetPath,
  }) : super(
          date: date,
          category: Category.photography,
        );

  final String assetPath;
}
