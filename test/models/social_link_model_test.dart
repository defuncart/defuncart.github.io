import 'package:defuncart_github_io/models/social_link_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Ensure parameters correct', () {
    const socialLinkModel = SocialLinkModel(
      assetpath: 'Path',
      url: 'Url',
    );
    expect(socialLinkModel.assetpath, 'Path');
    expect(socialLinkModel.url, 'Url');
  });
}
