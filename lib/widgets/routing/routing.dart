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

  final _mapAddressWebpage = {
    AboutScreen.address: () => AboutScreen(),
    ResumeScreen.address: () => ResumeScreen(),
  };

  final _mapAddressRedirect = {
    '/music/graydawn/pi': 'https://graydawn.bandcamp.com/album/--4',
  };

  final List<Page> _pages = [
    MaterialPage(
      child: HomeScreen(),
      key: const Key('HomeScreen'),
      name: HomeScreen.address,
    ),
  ];

  String get currentPath => _pages.last.name;

  void didPop(Page page) {
    _pages.remove(page);
    notifyListeners();
  }

  var _isLaunchingUrl = false;

  Future<void> setNewRoutePath(String url) async {
    print('setNewRoutePath: $url');

    if (_isLaunchingUrl) {
      return;
    }

    if (url == HomeScreen.address) {
      _pages.removeWhere(
        (element) => element.key != const Key('HomeScreen'),
      );
    } else if (_mapAddressWebpage.containsKey(url)) {
      _pages.add(
        MaterialPage(
          child: _mapAddressWebpage[url](),
          key: UniqueKey(),
          name: url,
        ),
      );
    } else if (_mapAddressRedirect.containsKey(url)) {
      _isLaunchingUrl = true;
      await launch(_mapAddressRedirect[url]);
      _isLaunchingUrl = false;
      return;
    } else {
      _pages.add(
        MaterialPage(
          child: FourZeroFourScreen(),
          key: UniqueKey(),
          name: FourZeroFourScreen.address,
        ),
      );
    }

    notifyListeners();
  }

  void resetToHome() => setNewRoutePath('/');
}

class MyAppRouteInformationParser extends RouteInformationParser<String> {
  @override
  Future<String> parseRouteInformation(RouteInformation routeInformation) async => routeInformation.location;

  @override
  RouteInformation restoreRouteInformation(String path) => RouteInformation(location: path);
}
