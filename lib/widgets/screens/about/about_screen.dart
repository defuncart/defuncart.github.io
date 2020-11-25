import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  static const address = '/about';

  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Text('About'),
    );
  }
}
