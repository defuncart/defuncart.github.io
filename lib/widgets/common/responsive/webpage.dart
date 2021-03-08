import 'package:defuncart_github_io/widgets/common/responsive/custom_orientation_builder.dart';
import 'package:defuncart_github_io/widgets/common/responsive/navigation_bar.dart';
import 'package:defuncart_github_io/widgets/common/responsive/navigation_drawer.dart';
import 'package:flutter/material.dart';

class Webpage extends StatelessWidget {
  const Webpage({
    Key? key,
    this.content,
    this.builder,
  })  : assert(content != null || builder != null),
        super(key: key);

  final Widget? content;
  final Widget Function(BuildContext context, Orientation orientation, Size availableSize)? builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => CustomOrientationBuilder(
        builder: (_, orientation) => Scaffold(
          drawer: orientation == Orientation.portrait ? NavigationDrawer() : null,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    NavigationBar(orientation: orientation),
                    SizedBox(height: 16.0),
                    Center(
                      child: SizedBox(
                        width: _constrainWidth(constraints.maxWidth),
                        child: content ?? builder!(context, orientation, _calculateAvailableSize(constraints)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  double _constrainWidth(double maxWidth) {
    if (maxWidth > 1200) {
      return maxWidth * 0.65;
    } else if (maxWidth > 800) {
      return maxWidth * 0.75;
    } else if (maxWidth > 640) {
      return maxWidth * 0.85;
    }

    return double.infinity;
  }

  Size _calculateAvailableSize(BoxConstraints constraints) => Size(
        constraints.maxWidth - 2 * 16,
        constraints.maxHeight - NavigationBar.height - 2 * 16 - 16,
      );
}
