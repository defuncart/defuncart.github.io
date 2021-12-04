import 'package:defuncart_github_io/models/nav_bar_item_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Ensure parameters correct', () {
    const navBarItemModel = NavBarItemModel(title: 'Title', url: 'Url');
    expect(navBarItemModel.title, 'Title');
    expect(navBarItemModel.url, 'Url');
  });
}
