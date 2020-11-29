import 'package:defuncart_github_io/configs/styling.dart';
import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/images/clickable_image.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:defuncart_github_io/widgets/screens/about/resume/resume_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  static const relativeUrl = '/about';

  const AboutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = [
      Theme.of(context).accentColor,
      Theme.of(context).disabledColor,
      Theme.of(context).textTheme.bodyText2.color,
    ];

    return Webpage(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            alignment: WrapAlignment.spaceAround,
            children: [
              for (var i = 0; i < WebsiteContent.about.traits.length; i++)
                Card(
                  elevation: Styling.cardElevation,
                  color: colors[i % colors.length],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      WebsiteContent.about.traits[i],
                      style: Theme.of(context).textTheme.bodyText2.apply(
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 64.0),
          Center(
            child: Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: [
                for (final socialLink in WebsiteContent.about.socialMediaLinks)
                  ClickableImage(
                    socialLink.assetpath,
                    width: 64.0,
                    height: 64.0,
                    onPressed: () => launch(socialLink.url),
                  ),
                ClickableImage(
                  WebsiteContent.about.resumeAssetpath,
                  width: 64.0,
                  height: 64.0,
                  onPressed: () => RoutePageManager.of(context).setNewRoutePath(ResumeScreen.relativeUrl),
                ),
              ],
            ),
          ),
          SizedBox(height: 64.0),
          Center(
            child: Text(WebsiteContent.about.footer),
          ),
        ],
      ),
    );
  }
}
