class Project {
  final String name;
  final String logoUrl;
  final String description;
  final List<String> features;
  final List<String> technologies;
  final Map<String, String> libraries; // key: lib name, value: URL
  final List<String> screenshots;
  final String? liveDemoUrl;
  final String githubUrl;
  final bool isWebProject;

  Project({
    required this.name,
    required this.logoUrl,
    required this.description,
    required this.features,
    required this.technologies,
    required this.libraries,
    required this.screenshots,
    this.liveDemoUrl,
    required this.githubUrl,
    required this.isWebProject,
  });
}
