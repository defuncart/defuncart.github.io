import 'package:defuncart_github_io/configs/app_themes.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: MyAppRouterDelegate(),
      routeInformationParser: MyAppRouteInformationParser(),
      theme: AppThemes.light,
    );
  }
}
