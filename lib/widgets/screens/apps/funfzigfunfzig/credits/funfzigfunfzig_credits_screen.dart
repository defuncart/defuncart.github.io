import 'package:defuncart_github_io/widgets/common/responsive/markdown_screen.dart';
import 'package:flutter/material.dart';

class CreditsFunfzigFunfzigScreen extends StatelessWidget {
  static const relativeUrl = '/apps/funfzigfunfzig/credits';

  const CreditsFunfzigFunfzigScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MarkdownScreen(data: _data);
  }
}

final _data = '''
# Fünfzig-Fünfzig

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

Voice synthesized by ResponsiveVoice.

<div style="width:300px;vertical-align:top;font-family: Arial;font-size:9pt;line-height: normal">
<a rel="license" href="//responsivevoice.org/"><img title="ResponsiveVoice Text To Speech" src="https://responsivevoice.org/wp-content/uploads/2014/08/120x31.png" style="float:left;padding-right:2px" /></a><span xmlns:dct="https://purl.org/dc/terms/" property="dct:title"><a href="//responsivevoice.org/" target="_blank" title="ResponsiveVoice Text To Speech">ResponsiveVoice</a></span> used under <a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/" title="Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License">Non-Commercial License</a></div>
<div style="clear:both;">&nbsp;</div>

## Translation

Vocabulary written by James Leahy.

User interface: English, German and Polish written by James Leahy.
''';
