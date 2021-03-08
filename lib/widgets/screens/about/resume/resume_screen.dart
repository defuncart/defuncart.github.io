import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/resume.dart';

class ResumeScreen extends StatelessWidget {
  static const relativeUrl = '/about/resume';

  const ResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      builder: (_, __, availableSize) {
        return SizedBox(
          height: availableSize.height,
          child: Resume(
            settings: ResumeSettings(
              profileAsset: rootBundle.load('home/profile.png'),
              baseFontAsset: rootBundle.load('fonts/open_sans/OpenSans-Regular.ttf'),
              boldFontAsset: rootBundle.load('fonts/open_sans/OpenSans-Bold.ttf'),
              italicFontAsset: rootBundle.load('fonts/open_sans/OpenSans-Italic.ttf'),
            ),
            // showActions: true,
          ),
        );
      },
    );
  }
}
