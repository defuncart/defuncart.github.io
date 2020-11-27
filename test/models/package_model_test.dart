import 'package:defuncart_github_io/models/package_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Ensure parameters correct', () {
    final socialLinkModel = PackageModel(
      title: 'Title',
      description: 'Description',
      pubDevUrl: 'Url',
      gitHubUrl: 'Url',
    );
    expect(socialLinkModel.title, 'Title');
    expect(socialLinkModel.description, 'Description');
    expect(socialLinkModel.pubDevUrl, 'Url');
    expect(socialLinkModel.gitHubUrl, 'Url');
  });
}
