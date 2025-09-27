import 'package:flutter/material.dart';
import 'package:vivek_portfolio/core/utils/app_constants.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/widgets/project_card.dart';

class ResponsiveProjects extends StatelessWidget {
  const ResponsiveProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    int crossAxisCount = 1;
    if (width >= 1200) {
      crossAxisCount = 3;
    } else if (width >= 700) {
      crossAxisCount = 2;
    }

    return Wrap(
      spacing: 20,
      runSpacing: 30,
      children: AppConstants.projects
          .map(
            (project) => SizedBox(
              width: (width / crossAxisCount) - 20,
              child: ProjectCard(project: project),
            ),
          )
          .toList(),
    );
  }
}
