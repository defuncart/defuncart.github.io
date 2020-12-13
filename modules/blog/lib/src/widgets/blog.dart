import 'package:blog/src/widgets/tags_bar.dart';
import 'package:flutter/material.dart';

import '../configs/blog_settings.dart';
import '../enums/category.dart';
import '../models/post.dart';
import 'category_bar.dart';
import 'posts_grid.dart';

class Blog extends StatefulWidget {
  const Blog({Key key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  var _selectedCategory = Category.music;
  String _selectedTag;

  final Map<Category, List<Post>> _mapPostsToCategory = {
    Category.music: <Post>[],
    Category.film: filmPosts,
    Category.tech: <Post>[],
    Category.photography: photographyPosts,
  };

  List<Post> get _postsToDisplay => _selectedTag != null
      ? _mapPostsToCategory[_selectedCategory].where((post) => post.tags.contains(_selectedTag)).toList()
      : _mapPostsToCategory[_selectedCategory];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryBar(
          onCategorySelected: (category) => setState(() {
            _selectedCategory = category;
            _selectedTag = null;
          }),
        ),
        SizedBox(height: 8.0),
        TagsBar(
          category: _selectedCategory,
          selectedTag: _selectedTag,
          onTagSelected: (tag) => setState(() => _selectedTag = tag),
        ),
        SizedBox(height: 8.0),
        PostsGrid(
          posts: _postsToDisplay,
        ),
      ],
    );
  }
}
