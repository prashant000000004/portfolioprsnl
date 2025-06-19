class Certificate {
  final String title;
  final String issuer;
  final String date;
  final String category;
  final String description;
  final List<String> skills;
  final String assetPath;
  final String link;

  Certificate({
    required this.title,
    required this.issuer,
    required this.date,
    required this.category,
    required this.description,
    required this.skills,
    required this.assetPath,
    required this.link,
  });
}
