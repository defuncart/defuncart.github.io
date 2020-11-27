import 'package:defuncart_github_io/widgets/common/responsive/custom_orientation_builder.dart';
import 'package:defuncart_github_io/widgets/common/responsive/navigation_bar.dart';
import 'package:defuncart_github_io/widgets/common/responsive/navigation_drawer.dart';
import 'package:flutter/material.dart';

class Webpage extends StatelessWidget {
  const Webpage({
    Key key,
    this.content,
    this.builder,
  })  : assert(content != null || builder != null),
        super(key: key);

  final Widget content;
  final OrientationWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return CustomOrientationBuilder(builder: (_, orientation) {
      return Scaffold(
        drawer: orientation == Orientation.portrait ? NavigationDrawer() : null,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  NavigationBar(orientation: orientation),
                  SizedBox(height: 8.0),
                  Flexible(
                    child: Center(
                      child: content ?? builder(context, orientation),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
