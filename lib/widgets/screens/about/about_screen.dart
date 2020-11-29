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
    return Webpage(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(WebsiteContent.about.content1),
          SizedBox(height: 16.0),
          Text(WebsiteContent.about.content2),
          SizedBox(height: 16.0),
          Text(WebsiteContent.about.content3),
          SizedBox(height: 16.0),
          Text(WebsiteContent.about.content4),
          SizedBox(height: 16.0),
          Text(WebsiteContent.about.content5),
          SizedBox(height: 32.0),
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
          SizedBox(height: 32.0),
          Center(
            child: Text(WebsiteContent.about.footer),
          ),
        ],
      ),
    );
  }
}
