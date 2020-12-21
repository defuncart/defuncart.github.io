import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';
import 'package:journal/journal.dart';

class JournalScreen extends StatelessWidget {
  static const relativeUrl = '/journal';

  const JournalScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Journal(),
      floatingActionButton: JournalFAB(),
    );
  }
}
