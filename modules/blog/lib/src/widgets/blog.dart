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
  Category _selectedCategory;
  String _selectedTag;

  final Map<Category, List<Post>> _mapPostsToCategory = {
    Category.music: musicPosts,
    Category.film: filmPosts,
    Category.tech: techPosts,
    Category.photography: photographyPosts,
  };

  List<Post> get _postsToDisplay {
    if (_selectedCategory == null) {
      allPosts.sort((a, b) => DateTime.parse(b.date).compareTo(DateTime.parse(a.date)));
      return allPosts;
    } else {
      if (_selectedTag == null) {
        return _mapPostsToCategory[_selectedCategory];
      } else {
        return _mapPostsToCategory[_selectedCategory].where((post) => post.tags.contains(_selectedTag)).toList();
      }
    }
  }

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
