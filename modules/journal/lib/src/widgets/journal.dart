import 'dart:async';

import 'package:flutter/material.dart';

// import 'package:unicorndial/unicorndial.dart';

import '../configs/blog_settings.dart';
import '../enums/category.dart';
import '../models/post.dart';
import 'posts_grid.dart';
import 'unicorndial.dart';

late StreamController<Category?> _categoryController;

class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  Category? _selectedCategory;

  final Map<Category, List<Post>> _mapPostsToCategory = {
    Category.music: musicPosts,
    Category.film: filmPosts,
    Category.photography: photographyPosts,
  };

  List<Post> get _postsToDisplay {
    if (_selectedCategory == null) {
      return allPosts;
    } else {
      return _mapPostsToCategory[_selectedCategory]!;
    }
  }

  @override
  void initState() {
    super.initState();

    allPosts.sort((a, b) => DateTime.parse(b.date).compareTo(DateTime.parse(a.date)));

    _categoryController = StreamController<Category?>();
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
  Category.music: const Color(0xff337EE8),
  Category.film: const Color(0xff33E87E),
  Category.photography: const Color(0xffE8E833)
};

class JournalFAB extends StatefulWidget {
  const JournalFAB({Key? key}) : super(key: key);

  @override
  State<JournalFAB> createState() => _JournalFABState();
}

class _JournalFABState extends State<JournalFAB> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return UnicornDialer(
      backgroundColor: Colors.transparent,
      parentButtonBackground: const Color(0xffE8337E),
      parentButtonForeground: Colors.white,
      orientation: UnicornOrientation.VERTICAL,
      parentButton: const Icon(Icons.filter_alt),
      childButtons: [
        for (final category in Category.values)
          UnicornButton(
            currentButton: FloatingActionButton(
              heroTag: category.toString(),
              backgroundColor: _mapCategoryFABButtonColor[category],
              foregroundColor: Colors.white,
              mini: true,
              onPressed: () {
                _expanded = false;
                _categoryController.add(category);
              },
              child: Icon(category.icon),
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
