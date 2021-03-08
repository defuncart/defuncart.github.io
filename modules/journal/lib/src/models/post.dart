import '../enums/category.dart';

abstract class Post {
  const Post({
    this.title,
    required this.date,
    required this.category,
    required this.tags,
  });

  final String? title;

  final String date;

  final Category category;

  final List<String> tags;
}
