import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/widgets/common/buttons/simple_text_button.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/common/text/markdown_widget.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:defuncart_github_io/widgets/screens/apps/_common/download_app_stores.dart';
import 'package:defuncart_github_io/widgets/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:iframes/iframes.dart';
import 'package:url_launcher/url_launcher.dart';

class CaogaCaogaScreen extends StatelessWidget {
  static const relativeUrl = '/apps/caogacaoga';

  const CaogaCaogaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appModel = WebsiteContent.apps.apps[relativeUrl]!;

    return Webpage(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              MarkdownWidget(data: _data),
              SizedBox(height: 16.0),
              Center(
                child: YoutubeWidget(
                  id: 'fgzioREqJuo',
                  width: 450,
                  height: 450 * 9 / 16,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Whether you are studying Irish at school, or looking to learn the language later in life, Caoga caoga will help you increase your vocabulary in a relaxed manner while having fun. One of the first games of its kind for the Irish language where everyday vocabulary is learned by completing diverse listening, matching and writing exercises, accompanied by descriptive illustrations and native pronunciation.',
              ),
              SizedBox(height: 16.0),
              Text(
                'So what are you waiting for? Download Caoga caoga today and start learning your first cúpla focal!',
              ),
              SizedBox(height: 16.0),
            ],
          ),
          DownloadAppStores(
            appStoreLink: appModel.platforms.appStoreLink,
            googlePlayLink: appModel.platforms.googlePlayLink,
          ),
          const SizedBox(height: 16.0),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text("Special thanks to Teanglann's Pronunciation Database and Abair speech synthesis."),
          ),
          const SizedBox(height: 16.0),
          Align(
            alignment: Alignment.centerLeft,
            child: SimpleTextButton(
              text: 'Full credits',
              onPressed: () => RoutePageManager.of(context).setNewRoutePath(CreditsCaogaCaogaScreen.relativeUrl),
              textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              SimpleTextButton(
                text: 'Press Release',
                onPressed: () => launch(
                  'https://docs.google.com/document/d/1ZGiSJ16ubQHUVeqa_OJ6SnR6OxMgpjAufbXifE2Eotw/edit?usp=sharing',
                ),
                textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              const SizedBox(width: 4.0),
              SimpleTextButton(
                text: 'Press Kit',
                onPressed: () => launch(
                  'https://drive.google.com/open?id=1pmhD4wX_5HNh9YVenqv4f4r_nN6b7vtM',
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

const _data = '''
*Caoga caoga* is a fun Irish vocabulary learning game where beginners of all ages learn vocabulary by associating words with descriptive images.

- 24 topics with over 450 words for A1/A2 and B1 CERF language learners.
- Four fun word-image games: Fifty-Fifty, Multiple Choice, Matching and Spelling.
- Pronunciation recordings of native speakers in three dialects: Connacht, Munster and Ulster.
- Bite-sized lessons which can be completed on the go or fitted into a busy schedule.
- 100% free, no ads and works offline.
''';
