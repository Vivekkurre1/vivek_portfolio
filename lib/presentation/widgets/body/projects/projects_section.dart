import 'package:flutter/material.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/project_ui.dart';
import 'projects_intro.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectsIntro(),
          SizedBox(height: 52),
          // ProjectsGrid(),
          ResponsiveProjects(),
        ],
      ),
    );
  }
}
