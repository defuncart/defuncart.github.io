class PackageModel {
  const PackageModel({
    required this.title,
    required this.description,
    required this.pubDevUrl,
    required this.gitHubUrl,
  });

  final String title;
  final String description;
  final String pubDevUrl;
  final String gitHubUrl;
}
