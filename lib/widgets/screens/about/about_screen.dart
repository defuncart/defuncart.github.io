import 'package:defuncart_github_io/configs/styling.dart';
import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/images/clickable_image.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:defuncart_github_io/widgets/screens/about/resume/resume_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class AboutScreen extends StatelessWidget {
  static const relativeUrl = '/about';

  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = [
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).textTheme.bodyMedium!.color,
      Theme.of(context).disabledColor,
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
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      WebsiteContent.about.traits[i],
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 64.0),
          Center(
            child: Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: [
                for (final socialLink in WebsiteContent.about.socialMediaLinks)
                  Link(
                    uri: Uri.parse(socialLink.url),
                    target: LinkTarget.blank,
                    builder: (context, onOpenLink) => ClickableImage(
                      socialLink.assetpath,
                      width: 64.0,
                      height: 64.0,
                      onPressed: () => onOpenLink?.call(),
                    ),
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
          const SizedBox(height: 64.0),
          Center(
            child: Text(WebsiteContent.about.footer),
          ),
        ],
      ),
    );
  }
}
