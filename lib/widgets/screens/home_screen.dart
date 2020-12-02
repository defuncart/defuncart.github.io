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
      builder: (_, orientation, availableSize) =>
          orientation == Orientation.landscape && availableSize.width > 700 ? Landscape() : Portrait(),
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
            SizedBox(width: 64.0),
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
          image: AssetImage(
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
          WebsiteContent.home.greeting,
          style: Theme.of(context).textTheme.headline5,
        ),
        Text(
          WebsiteContent.home.name.toUpperCase(),
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(
                fontWeight: FontWeight.bold,
              )
              .apply(
                color: Theme.of(context).accentColor,
              ),
        ),
        Text(
          WebsiteContent.home.tagline,
          style: Theme.of(context).textTheme.headline6.apply(
                color: Theme.of(context).disabledColor,
              ),
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
            onPressed: () => RoutePageManager.of(context).setNewRoutePath(AppsScreen.relativeUrl),
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
            onPressed: () => RoutePageManager.of(context).setNewRoutePath(PackagesScreen.relativeUrl),
          ),
          TextSpan(
            text: ' and release electronic ',
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
