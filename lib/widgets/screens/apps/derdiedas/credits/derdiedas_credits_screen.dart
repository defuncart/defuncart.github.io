import 'package:defuncart_github_io/widgets/common/responsive/markdown_screen.dart';
import 'package:flutter/material.dart';

class CreditsDerDieDasScreen extends StatelessWidget {
  static const relativeUrl = '/apps/derdiedas/credits';

  const CreditsDerDieDasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MarkdownScreen(data: _data);
  }
}

final _data = '''
# Der Die Das

© DeFunc Art 2018. All rights reserved.

**Concept**, **Design** and **Programming** by James Leahy.

Special thanks to my friends and family for all their support, and everyone who took part in the early-access testing phase for their invaluable feedback.

## Artwork

Logo by James Leahy.

## Audio

All sound effects composed by Gray Dawn.

Voice synthesized by ResponsiveVoice.

<div style="width:300px;vertical-align:top;font-family: Arial;font-size:9pt;line-height: normal">
<a rel="license" href="//responsivevoice.org/"><img title="ResponsiveVoice Text To Speech" src="https://responsivevoice.org/wp-content/uploads/2014/08/120x31.png" style="float:left;padding-right:2px" /></a><span xmlns:dct="https://purl.org/dc/terms/" property="dct:title"><a href="//responsivevoice.org/" target="_blank" title="ResponsiveVoice Text To Speech">ResponsiveVoice</a></span> used under <a rel="license" href="https://creativecommons.org/licenses/by-nc-nd/4.0/" title="Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License">Non-Commercial License</a></div>
<div style="clear:both;">&nbsp;</div>

## Fonts

[*Lovelo Font*](http://www.fontfabric.com/lovelo-font/) by [Hans Renzler](http://www.renzler.net/) and [*Lato*](http://www.latofonts.com/) by Łukasz Dziedzic.

## Translation

Vocabulary used adhering to Goethe-Institut's A1, A2 and B1 examinations. All example sentences written by James Leahy.

User interface: English, German and Polish written by James Leahy.
''';
