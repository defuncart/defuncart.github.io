import 'package:defuncart_github_io/models/nav_bar_item_model.dart';
import 'package:defuncart_github_io/widgets/screens/about/about_screen.dart';

abstract class WebsiteContent {
  static const userName = 'User\nname';

  static const navBarItems = [
    NavBarItemModel(
      title: 'About',
      url: AboutScreen.address,
    ),
  ];

  static const footer = 'Designed by James Leahy. Made with Flutter. Hosted on GitHub Pages.';
}
