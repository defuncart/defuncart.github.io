import 'package:defuncart_github_io/configs/styling.dart';
import 'package:defuncart_github_io/configs/website_content.dart';
import 'package:defuncart_github_io/models/package_model.dart';
import 'package:defuncart_github_io/widgets/common/images/clickable_image.dart';
import 'package:defuncart_github_io/widgets/common/responsive/webpage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PackagesScreen extends StatelessWidget {
  static const relativeUrl = '/packages';

  const PackagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Wrap(
        alignment: WrapAlignment.center,
        spacing: 16.0,
        runSpacing: 16.0,
        children: [
          for (final package in WebsiteContent.packages.packages) Package(package: package),
        ],
      ),
    );
  }
}

class Package extends StatelessWidget {
  const Package({
    Key? key,
    required this.package,
  }) : super(key: key);

  final PackageModel package;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Card(
        elevation: Styling.cardElevation,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                package.title,
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 8.0),
              Text(package.description),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (package.pubDevUrl.isNotEmpty)
                    ClickableImage(
                      WebsiteContent.packages.dartAssetpath,
                      width: 24,
                      height: 24,
                      onPressed: () => launch(package.pubDevUrl),
                    ),
                  ClickableImage(
                    WebsiteContent.packages.gitHubAssetpath,
                    width: 24,
                    height: 24,
                    onPressed: () => launch(package.gitHubUrl),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
