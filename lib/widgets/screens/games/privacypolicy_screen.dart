import 'package:defuncart_github_io/widgets/common/responsive/markdown_screen.dart';
import 'package:flutter/material.dart';

class GamesPrivacyPolicyScreen extends StatelessWidget {
  static const relativeUrl = '/games/privacypolicy';

  const GamesPrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MarkdownScreen(data: _data);
  }
}

final _data = '''
# Privacy Policy

Effective Date: May 25th, 2018

## Introduction

DeFunc Art ("we", "Data Controller") is a developer of language learning games that are made available though mobile app stores including the Apple App Store and Google Play Store. These games, henceforth referred to as "the Service", are developed using Unity software.

We use your data to improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy.

From time to time, we may update this Privacy Policy. If there are any changes that impact your personal data, we will notify you before these changes become effective. As changes to this Privacy Policy are effective once updated, you are advised to periodically review this Privacy Policy for any changes.

## How to Contact Us

We can be contacted per Email on <a href="mailto:defuncart@gmail.com">defuncart@gmail.com</a>.

## Types of Data Collected

### Personal Data

While using the Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you ("Personal Data"). Personally identifiable information may include, but is not limited to, an email address. For instance, when registering for a test version of an unreleased game, we may require an email to contact testers.

### Usage Data

Unity collects some or all of the following information about your device: unique device identifiers (e.g., IDFV for iOS devices and Android ID for Android devices); IP address; country of install (mapped from IP address); device manufacturer and model platform type (iOS, Android, Mac, Windows, etc.) and the operating system and version running on your system or device; language; CPU information such as model, the number of CPUs present, frequency, and instruction set support flags; the graphics card type and vendor name; graphics card driver name and version (e.g., “nv4disp.dll 6.10.93.71”); which graphics API is in use (e.g., “OpenGL 2.1” or “Direct3D 9.0c”); amount of system and video RAM present; current screen resolution; version of the Unity Editor used to create the game; sensor flags (e.g., device support for gyroscope, touch pressure or accelerometer); application or bundle identification (“app ID”) of the game installed; unique advertising identifiers provided for iOS and Android devices (e.g., IDFA or Android Ad ID); and a checksum of all the data that gets sent to verify that it transmitted correctly. For more information on the data collected and how it is used, please see Unity's [privacy policy](https://unity3d.com/legal/privacy-policy).

The Service utilizes Unity's Analytics to track player progression and determine potential issues with the Service.

## Transfer Of Data

Your information, including Personal Data, may be transferred to — and maintained on — computers located outside of your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from your jurisdiction.

## Children's Privacy

The Service is not targeted to persons under the age of 13 ("Children") and thus we do not knowingly collect personally identifiable information from Children. If you are a parent or guardian and you are aware that your Children has provided us with Personal Data, please contact us.

## Your Rights

At any time, you have the right to request what data Unity has stored about you and to permanently opt-out of Unity's data collection. Please click the *Data Privacy* button in the game's setting for more information.

If you previously signed up for a testing version of a game and wish to update or remove your email, then please contact us.
''';
