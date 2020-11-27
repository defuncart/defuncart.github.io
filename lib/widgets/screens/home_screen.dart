import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/common/text/clickable_text_span.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:defuncart_github_io/widgets/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const relativeUrl = '/';

  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      builder: (_, orientation) => orientation == Orientation.landscape ? Landscape() : Portrait(),
    );
  }
}

class Landscape extends StatelessWidget {
  const Landscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Avatar(),
            SizedBox(width: 32.0),
            Intro(),
          ],
        ),
        SizedBox(height: 32.0),
        Tagline(),
      ],
    );
  }
}

class Portrait extends StatelessWidget {
  const Portrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Avatar(),
        SizedBox(height: 32.0),
        Intro(),
        SizedBox(height: 32.0),
        Tagline(),
      ],
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            WebsiteContent.home.profileAsset,
          ),
        ),
      ),
    );
  }
}

class Intro extends StatelessWidget {
  const Intro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Welcome! I\'m',
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          'JAMES LEAHY',
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          'Flutter Developer',
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}

class Tagline extends StatelessWidget {
  const Tagline({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'At DeFuncArt I build innovative language learning ',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          ClickableTextSpan(
            text: 'apps',
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
            onPressed: () => RoutePageManager.of(context).setNewRoutePath(MusicScreen.relativeUrl), //TODO
          ),
          TextSpan(
            text: ', publish dart and flutter ',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          ClickableTextSpan(
            text: 'packages',
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
            onPressed: () => RoutePageManager.of(context).setNewRoutePath(MusicScreen.relativeUrl), //TODO
          ),
          TextSpan(
            text: ' and release experimental ',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          ClickableTextSpan(
            text: 'music',
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
            onPressed: () => RoutePageManager.of(context).setNewRoutePath(MusicScreen.relativeUrl),
          ),
          TextSpan(
            text: '.',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
