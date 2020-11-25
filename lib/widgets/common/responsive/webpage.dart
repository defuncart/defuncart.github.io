import 'package:defuncart_github_io/widgets/common/responsive/navigation_bar.dart';
import 'package:defuncart_github_io/widgets/common/responsive/navigation_drawer.dart';
import 'package:flutter/material.dart';

class Webpage extends StatelessWidget {
  static const _minWidthLandscape = 640;

  const Webpage({
    Key key,
    @required this.content,
  }) : super(key: key);

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (_, deviceOrientation) {
      final appOrientation =
          MediaQuery.of(context).size.width > _minWidthLandscape && deviceOrientation == Orientation.landscape
              ? Orientation.landscape
              : Orientation.portrait;

      return Scaffold(
        drawer: appOrientation == Orientation.portrait ? NavigationDrawer() : null,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                NavigationBar(orientation: appOrientation),
                Expanded(
                  child: Center(
                    child: content,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
