import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:resume/resume.dart';

void main() {
  test('', () async {
    final settings = ResumeSettings(
      profileAsset: Future.value(ByteData(1)),
      baseFontAsset: Future.value(ByteData(2)),
      boldFontAsset: Future.value(ByteData(3)),
      italicFontAsset: Future.value(ByteData(4)),
    );

    final profileAsset = await settings.profileAsset;
    final baseFontAsset = await settings.baseFontAsset;
    final boldFontAsset = await settings.boldFontAsset;
    final italicFontAsset = await settings.italicFontAsset;

    expect(profileAsset.lengthInBytes, 1);
    expect(baseFontAsset.lengthInBytes, 2);
    expect(boldFontAsset.lengthInBytes, 3);
    expect(italicFontAsset.lengthInBytes, 4);
  });
}
