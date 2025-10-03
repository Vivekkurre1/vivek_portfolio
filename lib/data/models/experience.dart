// enum EmploymentType { fullTime, partTime, remote, contract, freelance }

// class Experience {
//   final String companyName;
//   final String designation;
//   final DateTime startDate;
//   final DateTime endDate;
//   final EmploymentType employmentType;
//   final String companyLogoUrl;
//   final String companyWebsite;
//   final Map<String, String>
//   socialLinks; // Example: {"LinkedIn": "...", "Twitter": "..."}
//   final List<String> techStack; // [Flutter, Dart, Java, ...]
//   final List<ProjectExperience> projects;
//   // final List<String> responsibilities; // ["Did X", "Led Y", ...]

//   Experience({
//     required this.companyName,
//     required this.designation,
//     required this.startDate,
//     required this.endDate,
//     required this.employmentType,
//     required this.companyLogoUrl,
//     required this.companyWebsite,
//     required this.socialLinks,
//     required this.techStack,
//     required this.projects,
//     // required this.responsibilities,
//   });
// }

// class ProjectExperience {
//   final String name;
//   final String? appOrWebLink;
//   final List<String> screenshots;
//   final String summary; // Short para
//   final List<String> features; // ["Implemented X", ...]
//   final List<String> technologies; // [Flutter, Dart, Java, ...]
//   final Map<String, String> libraries; // key: lib name, value: URL
//   final bool isWebProject;

//   ProjectExperience({
//     required this.name,
//     this.appOrWebLink,
//     required this.screenshots,
//     required this.summary,
//     required this.features,
//     required this.technologies,
//     required this.libraries,
//     required this.isWebProject,
//   });
// }

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
  final String? appOrWebLink;
  final List<String> screenshots;
  final String summary;
  final List<String> features;
  ProjectExperience({
    required this.name,
    this.appOrWebLink,
    required this.screenshots,
    required this.summary,
    required this.features,
  });
}
