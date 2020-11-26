import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  static const relativeUrl = '/about/resume';

  const ResumeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Text('Resume'),
    );
  }
}
