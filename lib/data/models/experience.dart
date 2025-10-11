enum EmploymentType { fullTime, partTime, online, contract }

class Experience {
  final String companyName;
  final String designation;
  final EmploymentType employmentType;
  final DateTime startDate;
  final DateTime endDate;
  final String companyLogoUrl;
  final String companyWebsite;
  final Map<String, String> socialLinks;
  final List<String> techStack;
  final List<ProjectExperience> projects;
  Experience({
    required this.companyName,
    required this.designation,
    required this.employmentType,
    required this.startDate,
    required this.endDate,
    required this.companyLogoUrl,
    required this.companyWebsite,
    required this.socialLinks,
    required this.techStack,
    required this.projects,
  });
}

class ProjectExperience {
  final String name;
  final String? logoUrl;
  final String summary;
  final String? appOrWebLink;
  final List<String> features;
  final Map<String, String>? libraries; // key: lib name, value: URL
  final List<String> screenshots;
  ProjectExperience({
    required this.name,
    this.appOrWebLink,
    required this.screenshots,
    this.logoUrl,
    this.libraries,
    required this.summary,
    required this.features,
  });
}
