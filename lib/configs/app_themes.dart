import 'package:flutter/material.dart';

// ignore_for_file: unused_field
abstract class AppThemes {
  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: _AppColors.regular,
    ),
    textTheme: ThemeData.light().textTheme.apply(
          fontFamily: 'OpenSans',
          bodyColor: _AppColors.regular,
          displayColor: _AppColors.regular,
        ),
    cardColor: Colors.white,
    disabledColor: _AppColors.light,
    colorScheme: const ColorScheme.light().copyWith(
      secondary: _DFAColors.pink,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: _DFAColors.pink,
    ),
  );

  // static final dark = ThemeData.dark().copyWith(
  //   accentColor: _DFAColors.pink,
  //   // scaffoldBackgroundColor: _AppColors.regular,
  //   iconTheme: IconThemeData(
  //     color: _AppColors.light,
  //   ),
  //   textTheme: ThemeData.light().textTheme.apply(
  //         fontFamily: 'OpenSans',
  //         bodyColor: _AppColors.light,
  //         displayColor: _AppColors.light,
  //       ),
  //   // cardColor: Colors.white,
  // );
}

abstract class _AppColors {
  static const regular = Color(0xff58595b);
  static const light = Color(0xffa7a9ac);
}

abstract class _DFAColors {
  static const pink = Color(0xffE8337E);
  static const blue = Color(0xff337EE8);
  static const green = Color(0xff33E87E);
  static const yellow = Color(0xffE8E833);
}
