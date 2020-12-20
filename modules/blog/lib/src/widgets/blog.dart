import 'dart:async';

import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';

import '../configs/blog_settings.dart';
import '../enums/category.dart';
import '../models/post.dart';
import 'posts_grid.dart';

StreamController<Category> _categoryController;

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
    Category.photography: photographyPosts,
  };

  List<Post> get _postsToDisplay {
    if (_selectedCategory == null) {
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
  void initState() {
    super.initState();

    allPosts.sort((a, b) => DateTime.parse(b.date).compareTo(DateTime.parse(a.date)));

    _categoryController = StreamController<Category>();
    _categoryController.stream.listen((category) {
      if (_selectedCategory != category) {
        setState(() => _selectedCategory = category);
      }
    });
  }

  @override
  void dispose() {
    _categoryController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PostsGrid(
        posts: _postsToDisplay,
      ),
    );
  }
}

final _mapCategoryFABButtonColor = {
  Category.music: Color(0xff337EE8),
  Category.film: Color(0xff33E87E),
  Category.photography: Color(0xffE8E833)
};

class BlogFAB extends StatefulWidget {
  const BlogFAB({Key key}) : super(key: key);

  @override
  _BlogFABState createState() => _BlogFABState();
}

class _BlogFABState extends State<BlogFAB> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return UnicornDialer(
      backgroundColor: Colors.transparent,
      parentButtonBackground: Color(0xffE8337E),
      orientation: UnicornOrientation.VERTICAL,
      parentButton: Icon(Icons.filter_alt),
      childButtons: [
        for (final category in Category.values)
          UnicornButton(
            currentButton: FloatingActionButton(
              heroTag: category.toString(),
              backgroundColor: _mapCategoryFABButtonColor[category],
              mini: true,
              child: Icon(category.icon),
              onPressed: () {
                _expanded = false;
                _categoryController.add(category);
              },
            ),
          ),
      ],
      onMainButtonPressed: () {
        if (_expanded) {
          _categoryController.add(null);
        }
        _expanded = !_expanded;
      },
    );
  }
}
