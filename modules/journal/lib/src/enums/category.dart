import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

enum Category {
  music,
  film,
  photography,
}

extension CategoryExtension on Category {
  static const _mapCategoryIcon = {
    Category.music: MdiIcons.headphones,
    Category.film: MdiIcons.filmstrip,
    Category.photography: MdiIcons.camera,
  };

  IconData get icon => _mapCategoryIcon[this];
}
