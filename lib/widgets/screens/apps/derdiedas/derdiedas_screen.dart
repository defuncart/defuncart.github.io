import 'package:defuncart_github_io/widgets/common/buttons/simple_text_button.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/common/text/markdown_widget.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:defuncart_github_io/widgets/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DerDieDasScreen extends StatelessWidget {
  static const relativeUrl = '/apps/derdiedas';

  const DerDieDasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final appModel = WebsiteContent.apps.apps[relativeUrl]!;

    return Webpage(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MarkdownWidget(data: _data),
              const SizedBox(height: 16.0),
              Center(
                child: Image.asset(
                  'assets/apps/derdiedas/derdiedas.gif',
                  width: 265,
                  height: 472,
                ),
              ),
              const SizedBox(height: 16.0),
              // const Text(
              //   'Der Die Das is now available for testing, simply click on a link below to join a testing program.',
              // ),
              // const SizedBox(height: 16.0),
            ],
          ),
          // DownloadAppStores(
          // appStoreLink: appModel.platforms.appStoreLink,
          // googlePlayLink: appModel.platforms.googlePlayLink,
          // appStoreLink: null,
          // ),
          const SizedBox(height: 16.0),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text("Special thanks to ResponsiveVoice's speech synthesis."),
          ),
          const SizedBox(height: 16.0),
          Align(
            alignment: Alignment.centerLeft,
            child: SimpleTextButton(
              text: 'Full credits',
              onPressed: () => RoutePageManager.of(context).setNewRoutePath(CreditsDerDieDasScreen.relativeUrl),
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
                  'https://docs.google.com/document/d/1cfavvTwtuMD4Z7UarFtNbQB9UCGdID_K2rMJsmWAeN8/edit?usp=sharing',
                ),
                textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              const SizedBox(width: 4.0),
              SimpleTextButton(
                text: 'Press Kit',
                onPressed: () => launch(
                  'https://drive.google.com/open?id=1TM3vD_TuFHSMrH1yiB_FbCmF6anQM3HW',
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
*Der Die Das* is a fun German articles quiz game where beginners and lower intermediate students test their knowledge of articles for German nouns.

- Contains 750 nouns adhering to the Goethe-Institut A1 and A2 examinations respectively.
- Roughly 30 tips to aid in the learning of articles for certain noun types.
- Pronunciation recordings.
- Simple yet fun gameplay in which the player aims to beat their high score.
- 100% free, no ads and works offline.
''';
