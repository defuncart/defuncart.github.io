import 'package:defuncart_github_io/widgets/common/responsive/markdown_screen.dart';
import 'package:flutter/material.dart';

class CreditsCaogaCaogaScreen extends StatelessWidget {
  static const relativeUrl = '/apps/caogacaoga/credits';

  const CreditsCaogaCaogaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MarkdownScreen(data: _data);
  }
}

final _data = '''
# Caoga caoga

© DeFunc Art 2018. All rights reserved.

**Concept**, **Design** and **Programming** by James Leahy.

Special thanks to my friends and family for all their support, and everyone who took part in the early-access testing phase for their invaluable feedback.

## Artwork

Illustrations designed by [Freepik](https://freepik.com), edited by James Leahy except:
- colors by James Leahy
- countries1 by James Leahy
- emotions by Mozilla ([Emoji](https://github.com/mozilla/fxemoji/blob/gh-pages/LICENSE.md) licensed under CC Attribution)
- languages by James Leahy
- numbers1 by James Leahy
- numbers2 by James Leahy
- numbers4 utilize [Emoji](https://github.com/mozilla/fxemoji/blob/gh-pages/LICENSE.md) by Mozilla, edited (no clock face). 'second', 'minute', 'hour' feature font ['ww-digital'](http://www.dafont.com/de/ww-digital.font) by Michelle Laura
- places2/busStop by Graphiqastock / Freepik, edited by James Leahy
- places3/gasStation by iconicbestiary / Freepik, edited by James Leahy

Logo by James Leahy.

Photos courtesy of [Pixabay](https://pixabay.com/) (licensed under CC0).

UI artwork by James Leahy except:
- levelTestHolder by Freepix, edited by James Leahy
- levelHolder by zirconicusso / Freepik, edited by James Leahy

## Audio

All sound effects composed by Gray Dawn.

Recordings of native speakers courtesy of Teanglann's [Pronunciation Database](http://www.teanglann.ie/en/fuaim/). Remaining words were synthesized by [ABAIR](http://www.abair.tcd.ie/).

## Translation

Vocabulary written by James Leahy using [Foclóir Gaeilge-Béarla (Ó Dónaill, 1977)](http://www.teanglann.ie/ga/fgb/) and [Foclóir Nua Béarla-Gaeilge](https://www.focloir.ie/ga/) as sources.

User interface: English, German and Polish written by James Leahy.
''';
