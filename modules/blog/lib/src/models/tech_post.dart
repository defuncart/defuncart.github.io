import 'package:meta/meta.dart';

import '../enums/category.dart';
import 'post.dart';

class TechPost extends Post {
  const TechPost({
    @required String title,
    @required String date,
    @required List<String> tags,
    @required this.content,
  }) : super(
          title: title,
          date: date,
          category: Category.tech,
          tags: tags,
        );

  final String content;
}
