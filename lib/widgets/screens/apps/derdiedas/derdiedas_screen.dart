import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';

class DerDieDasScreen extends StatelessWidget {
  static const relativeUrl = '/apps/derdiedas';

  const DerDieDasScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Text('DerDieDas'),
    );
  }
}
