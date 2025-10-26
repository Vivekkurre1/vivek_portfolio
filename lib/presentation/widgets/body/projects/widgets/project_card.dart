import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
import 'package:vivek_portfolio/data/models/project.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/widgets/custom_chips.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/widgets/project_card_head.dart';
import 'package:vivek_portfolio/presentation/common_widgets/screenshots.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final themeData = context.watch<ThemeCubit>().state.themeData;
    return Container(
      decoration: BoxDecoration(
        color: themeData.cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Responsive height!
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            // Logo and Project Name Row
            CardHead(project: project, themeData: themeData),
            // Description
            Text(
              project.description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: themeData.textTheme.bodySmall?.copyWith(height: 1.2),
            ),
            // Features
            Text('Features:', style: themeData.textTheme.titleSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: project.features
                  .map(
                    (f) => Text('• $f', style: themeData.textTheme.bodySmall),
                  )
                  .toList(),
            ),
            CustomChips(
              title: "Technologies:",
              themeData: themeData,
              items: project.technologies,
            ),
            CustomChips(
              title: "Libraries:",
              themeData: themeData,
              items: project.libraries.keys.toList(),
              isClickable: true,
              links: project.libraries,
            ),
            Screenshots(
              themeData: themeData,
              screenshots: project.screenshots,
              isWebProject: project.isWebProject,
            ),
            // Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (project.liveDemoUrl != null)
                  ElevatedButton(
                    onPressed: () => launchUrl(Uri.parse(project.liveDemoUrl!)),
                    child: const Text('Live Demo'),
                  ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  icon: const Icon(Icons.code),
                  label: const Text('GitHub'),
                  onPressed: () => launchUrl(Uri.parse(project.githubUrl)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
