import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';

class FourZeroFourScreen extends StatelessWidget {
  static const relativeUrl = '/404';

  const FourZeroFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Webpage(
      content: Center(
        child: Text('Nothing found!'),
      ),
    );
  }
}
