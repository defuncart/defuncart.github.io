import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: MyAppRouterDelegate(),
      routeInformationParser: MyAppRouteInformationParser(),
    );
  }
}
