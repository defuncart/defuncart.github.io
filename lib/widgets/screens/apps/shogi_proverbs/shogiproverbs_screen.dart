import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/buttons/simple_text_button.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/common/text/clickable_text_span.dart';
import 'package:defuncart_github_io/widgets/screens/apps/_common/download_app_stores.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShogiProverbsScreen extends StatelessWidget {
  static const relativeUrl = '/apps/shogiproverbs';

  const ShogiProverbsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appModel = WebsiteContent.apps.apps[relativeUrl]!;

    return Webpage(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Shogi (将棋) is a two-player strategy board game native to Japan, belonging to the same family as chess and xiangqi. Shogi proverbs are technical tips for the player to lead them in the right direction when they are unsure of what move to play. This app contains 50 such proverbs for beginner to intermediate players.',
              ),
              const SizedBox(height: 16.0),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'All proverbs taken from Shogi Kakugen Mame Jiten (Tiny dictionary of Shogi proverbs) by Masahiko Urano, in the form presented on ',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    ClickableTextSpan(
                      text: "Takako Tombo Noda's website",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                          ),
                      onPressed: () {},
                    ),
                    TextSpan(
                      text: '.',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
          DownloadAppStores(
            appStoreLink: appModel.platforms.appStoreLink,
            googlePlayLink: appModel.platforms.googlePlayLink,
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              SimpleTextButton(
                text: 'Privacy Policy',
                onPressed: () => launch(
                  'https://github.com/defuncart/shogi_proverbs/blob/main/privacy_policy.md',
                ),
                textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
