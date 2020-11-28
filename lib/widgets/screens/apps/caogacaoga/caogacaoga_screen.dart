import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';

class CaogaCaogaScreen extends StatelessWidget {
  static const relativeUrl = '/apps/caogacaoga';

  const CaogaCaogaScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Text('CaogaCaoga'),
    );
  }
}
