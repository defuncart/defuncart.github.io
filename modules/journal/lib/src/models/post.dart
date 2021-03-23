import '../enums/category.dart';

abstract class Post {
  const Post({
    this.title,
    required this.date,
    required this.category,
  });

  final String? title;

  final String date;

  final Category category;
}
