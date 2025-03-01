// ignore_for_file: unused_field, unused_element

import 'package:jaspr/jaspr.dart';

// As your css styles are defined using just Dart, you can simply
// use global variables or methods for common things like colors.
const primaryColor = _DFAColors.pink;

const regularText = _AppColors.regular;
const lightText = _AppColors.light;

abstract class _AppColors {
  static const regular = Color.hex('58595b');
  static const light = Color.hex('a7a9ac');
}

abstract class _DFAColors {
  static const pink = Color.hex('#E8337E');
  static const blue = Color.hex('337EE8');
  static const green = Color.hex('33E87E');
  static const yellow = Color.hex('E8E833');
}
