import 'package:defuncart_github_io/widgets/common/buttons/simple_text_button.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/common/text/markdown_widget.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:defuncart_github_io/widgets/screens/screens.dart';
import 'package:flutter/material.dart';

class PolnaPolScreen extends StatelessWidget {
  static const relativeUrl = '/apps/polnapol';

  const PolnaPolScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MarkdownWidget(data: _data),
          SimpleTextButton(
            text: 'Full credits',
            onPressed: () => RoutePageManager.of(context).setNewRoutePath(CreditsPolnaPolScreen.relativeUrl),
            textStyle: Theme.of(context).textTheme.bodyText2!.copyWith(color: Theme.of(context).accentColor),
          ),
        ],
      ),
    );
  }
}

final _data = '''
*Pół na pół* is a fun Polish vocabulary learning game where beginners of all ages learn vocabulary by associating words with descriptive images.

- 24 topics with over 450 words for A1/A2 and B1 CERF language learners.
- Four fun word-image games: Fifty-Fifty, Multiple Choice, Matching and Spelling.
- Pronunciation recordings.
- Bite-sized lessons which can be completed on the go or fitted into a busy schedule.
- 100% free, no ads and works offline.

<table style="width:100%">
  <tr>
    <td align="center"><img src="https://play-lh.googleusercontent.com/0E1fVgyfetK1LLUcLNT51KGFHZ0EqLj0WTA7XmZgMppklH2aEaBKX4x6ck8nlN9cJf-6=w1159-h934-rw"></td>
    <td align="center"><img src="https://play-lh.googleusercontent.com/UOXsxUa1nM0TB9_VTIwSaqtQpjJ9pvsyIoZCGHSJAcDi5PcmWbN8oBzlMDw5QrXiARL-=w1159-h934-rw"></td>
    <td align="center"><img src="https://play-lh.googleusercontent.com/F4idT8hWWKbvvpFVroOBObecW2xNuvLMMizMnp-2jJYEpB2IfslUO7IKujWuKbco03k=w1159-h934-rw"></td>
    <td align="center"><img src="https://play-lh.googleusercontent.com/G84PChn6cVNhSBhR81JjeKGeQntjDk9Sl-ZjcKlp4Q4CYz070r3lTxWGqjC6hm6u4cw=w1159-h934-rw"></td>
  </tr>
</table>

*Pół na pół* isn't under active development anymore, however a testing version of the game is still available for <a href="https://play.google.com/store/apps/details?id=com.defuncart.polnapol">Android</a>.

Special thanks to ResponsiveVoice's speech synthesis.
''';

// <td align="center"><img src="https://play-lh.googleusercontent.com/-lN364ytvdV1PWVKl8mfUparRt3XOLH7zezPH6LrBf1qhY6X76fj3kPx75LMTJyoUw=w1159-h934-rw"></td>
