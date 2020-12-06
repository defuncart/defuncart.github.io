import 'package:defuncart_github_io/widgets/common/buttons/simple_text_button.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:defuncart_github_io/widgets/common/text/markdown_widget.dart';
import 'package:defuncart_github_io/widgets/routing/routing.dart';
import 'package:defuncart_github_io/widgets/screens/apps/funfzigfunfzig/credits/funfzigfunfzig_credits_screen.dart';
import 'package:flutter/material.dart';

class FunfzigFunfzigScreen extends StatelessWidget {
  static const relativeUrl = '/apps/funfzigfunfzig';

  const FunfzigFunfzigScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MarkdownWidget(
            data: _data,
            style: {
              'td': Style(
                padding: const EdgeInsets.all(4),
              ),
            },
          ),
          SimpleTextButton(
            text: 'Full credits',
            onPressed: () => RoutePageManager.of(context).setNewRoutePath(CreditsFunfzigFunfzigScreen.relativeUrl),
            textStyle: Theme.of(context).textTheme.bodyText2.copyWith(color: Theme.of(context).accentColor),
          ),
        ],
      ),
    );
  }
}

final _data = '''
*Fünfzig-Fünfzig* is a fun German vocabulary learning game where beginners of all ages learn vocabulary by associating words with descriptive images.

- 24 topics with over 450 words for A1/A2 and B1 CERF language learners.
- Five fun word-image games: Fifty-Fifty, Multiple Choice, Matching, Spelling and DerDieDas.
- Pronunciation recordings.
- Bite-sized lessons which can be completed on the go or fitted into a busy schedule.
- 100% free, no ads and works offline.

<table style="width:100%">
  <tr>
    <td align="center"><img src="https://play-lh.googleusercontent.com/danGGlnKrt4dn9e0rHrix82aeaLYLIRfVmA8ulz_FRN54WPXww8MUjeCNbSvi4GE-NY=w1200-h934-rw"></td>
    <td align="center"><img src="https://play-lh.googleusercontent.com/HdmIUGF8SEzFA03Dk8EaSsBKJGfyc1TeYyVujS1oxZy9DqajjVtm69djm2yDqxG1vYtL=w1200-h934-rw"></td>
    <td align="center"><img src="https://play-lh.googleusercontent.com/y_zkms6tNitfevKUvEgVkH2bUkvzW2VGvu4v_RCj5_mfI9Uya-FnpVSX56sMUzq_wUc=w1200-h934-rw"></td>
    <td align="center"><img src="https://play-lh.googleusercontent.com/2y8f-sstmEY7H-msWSK5nsTxgJVTji9W_zB_BUuxKI5TSOI3ikafJ4Xlj0Ha98oMor4=w1200-h934-rw"></td>
    <td align="center"><img src="https://play-lh.googleusercontent.com/JdL4mAjHiLS_qEj627HYbLCRGVOqStPlAPWHy4EH1MjojabTAlwBXN9GpwKiHA9sdA=w1200-h934-rw"></td>
    <td align="center"><img src="https://play-lh.googleusercontent.com/Hd13UfiyTMnkUIF9SA9dyTYN3hyq8vJoE0iaNAIn0cP3lrk-3BK1nWIkmslzBEhV1UM=w1200-h934-rw"></td>
  </tr>
</table>

*Fünfzig-Fünfzig* isn't under active development anymore, however a testing version of the game is still available for <a href="https://play.google.com/store/apps/details?id=com.defuncart.funfzigfunfzig">Android</a>.

Special thanks to ResponsiveVoice's speech synthesis.
''';
