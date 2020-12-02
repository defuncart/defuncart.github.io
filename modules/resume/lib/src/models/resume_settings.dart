import 'dart:typed_data';

import 'package:meta/meta.dart';

class ResumeSettings {
  const ResumeSettings({
    @required this.profileAsset,
    @required this.baseFontAsset,
    @required this.boldFontAsset,
    @required this.italicFontAsset,
  });

  final Future<ByteData> profileAsset;

  final Future<ByteData> baseFontAsset;

  final Future<ByteData> boldFontAsset;

  final Future<ByteData> italicFontAsset;
}
