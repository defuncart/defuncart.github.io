import 'package:flutter/material.dart';

class CustomOrientationBuilder extends StatelessWidget {
  static const _minWidthLandscape = 480;

  const CustomOrientationBuilder({
    Key key,
    @required this.builder,
  }) : super(key: key);

  final OrientationWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context2, deviceOrientation) {
        final appOrientation =
            MediaQuery.of(context).size.width > _minWidthLandscape && deviceOrientation == Orientation.landscape
                ? Orientation.landscape
                : Orientation.portrait;

        return builder(context2, appOrientation);
      },
    );
  }
}
