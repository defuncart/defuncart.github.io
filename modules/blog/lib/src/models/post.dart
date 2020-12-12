import 'package:meta/meta.dart';

import '../enums/category.dart';

abstract class Post {
  const Post({
    this.title,
    @required this.date,
    @required this.category,
    @required this.tags,
  });

  // title can be null
  final String title;

  final String date;

  final Category category;

  final List<String> tags;
}
