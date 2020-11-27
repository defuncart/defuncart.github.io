import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

// Inspired by https://github.com/orestesgaolin/navigator_20_example/blob/master/lib/main_router.dart

class MyAppRouterDelegate extends RouterDelegate<String> with ChangeNotifier, PopNavigatorRouterDelegateMixin<String> {
  MyAppRouterDelegate() {
    // Ensure pushes are reflected in address bar
    _pageManager.addListener(notifyListeners);
  }

  final RoutePageManager _pageManager = RoutePageManager();

  /// In the build method we need to return Navigator using [navigatorKey]
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RoutePageManager>.value(
      value: _pageManager,
      child: Consumer<RoutePageManager>(
        builder: (context, pageManager, child) {
          return Navigator(
            key: navigatorKey,
            onPopPage: _onPopPage,
            pages: List.of(pageManager.pages),
          );
        },
      ),
    );
  }

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    final didPop = route.didPop(result);
    if (!didPop) {
      return false;
    }

    /// Notify the PageManager that page was popped
    _pageManager.didPop(route.settings);

    return true;
  }

  @override
  GlobalKey<NavigatorState> get navigatorKey => _pageManager.navigatorKey;

  @override
  String get currentConfiguration => _pageManager.currentPath;

  @override
  Future<void> setNewRoutePath(String configuration) async => await _pageManager.setNewRoutePath(configuration);
}

class RoutePageManager extends ChangeNotifier {
  static RoutePageManager of(BuildContext context) => Provider.of<RoutePageManager>(context, listen: false);

  /// Here we are storing the current list of pages
  List<Page> get pages => List.unmodifiable(_pages);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final _mapRelativeUrlScreen = {
    MusicScreen.relativeUrl: () => MusicScreen(),
    GrayDawnScreen.relativeUrl: () => GrayDawnScreen(),
    StrawberryComplexityScreen.relativeUrl: () => StrawberryComplexityScreen(),
    PackagesScreen.relativeUrl: () => PackagesScreen(),
    AboutScreen.relativeUrl: () => AboutScreen(),
    ResumeScreen.relativeUrl: () => ResumeScreen(),
  };

  final Map<String, String> _mapRelativeUrlRedirect = {
    for (final album in WebsiteContent.music.grayDawn.albums) album.relativeUrl: album.redirectUrl,
    for (final album in WebsiteContent.music.strawberryComplexity.albums) album.relativeUrl: album.redirectUrl,
  };

  static const _homeScreenKey = 'HomeScreen';

  final List<Page> _pages = [
    MaterialPage(
      child: HomeScreen(),
      key: const Key(_homeScreenKey),
      name: HomeScreen.relativeUrl,
    ),
  ];

  String get currentPath => _pages.last.name;

  void didPop(Page page) {
    _pages.remove(page);
    notifyListeners();
  }

  var _isLaunchingUrl = false;

  Future<void> setNewRoutePath(String relativeUrl) async {
    if (_isLaunchingUrl) {
      return;
    }

    // if (currentPath == url) {
    //   return;
    // }

    if (relativeUrl == HomeScreen.relativeUrl) {
      _pages.removeWhere(
        (element) => element.key != const Key(_homeScreenKey),
      );
    } else if (_mapRelativeUrlScreen.containsKey(relativeUrl)) {
      _pages.add(
        MaterialPage(
          child: _mapRelativeUrlScreen[relativeUrl](),
          key: UniqueKey(),
          name: relativeUrl,
        ),
      );
    } else if (_mapRelativeUrlRedirect.containsKey(relativeUrl)) {
      _isLaunchingUrl = true;
      await launch(_mapRelativeUrlRedirect[relativeUrl]);
      _isLaunchingUrl = false;
      return;
    } else {
      _pages.add(
        MaterialPage(
          child: FourZeroFourScreen(),
          key: UniqueKey(),
          name: FourZeroFourScreen.relativeUrl,
        ),
      );
    }

    notifyListeners();
  }

  void resetToHome() => setNewRoutePath(HomeScreen.relativeUrl);
}

class MyAppRouteInformationParser extends RouteInformationParser<String> {
  @override
  Future<String> parseRouteInformation(RouteInformation routeInformation) async => routeInformation.location;

  @override
  RouteInformation restoreRouteInformation(String path) => RouteInformation(location: path);
}
