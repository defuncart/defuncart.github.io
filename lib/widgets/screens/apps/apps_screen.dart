import 'package:defuncart_github_io/configs/styling.dart';
import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/models/app_model.dart';
import 'package:defuncart_github_io/widgets/common/gesture_detector/mouse_gesture_detector.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:flutter/material.dart';

class AppsScreen extends StatelessWidget {
  static const relativeUrl = '/apps';

  const AppsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Wrap(
        alignment: WrapAlignment.center,
        spacing: 16.0,
        runSpacing: 16.0,
        children: [
          for (final app in WebsiteContent.apps.apps.values) App(app: app),
        ],
      ),
    );
  }
}

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.app,
  }) : super(key: key);

  final AppModel app;

  @override
  Widget build(BuildContext context) {
    return MouseGestureDetector(
      onTap: () => RoutePageManager.of(context).setNewRoutePath(app.relativeUrl),
      child: Card(
        elevation: Styling.cardElevation,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: 275,
            child: Column(
              children: [
                Text(
                  app.title,
                  style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                Image.asset(
                  app.icon,
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 16.0),
                Text(app.description),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (app.platforms.ios) IOSLogo(),
                    if (app.platforms.android) AndroidLogo(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IOSLogo extends StatelessWidget {
  const IOSLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'iOS',
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
          ),
    );
  }
}

class AndroidLogo extends StatelessWidget {
  const AndroidLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.android,
      size: 24.0,
    );
  }
}
