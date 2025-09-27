import 'package:flutter/material.dart';
import 'package:vivek_portfolio/data/models/project.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/widgets/custom_chips.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/helpers/helper.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/widgets/project_card_head.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/widgets/screenshots.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.cardColor,
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
          children: [
            // Logo and Project Name Row
            CardHead(project: project),
            const SizedBox(height: 12),
            // Description
            Text(
              project.description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              // style: theme.textTheme.bodyText2,
            ),
            const SizedBox(height: 12),

            // Features
            Text(
              'Features:',
              // style: theme.textTheme.subtitle1?.copyWith(
              //   fontWeight: FontWeight.w600,
              // ),
            ),
            ...project.features.map((f) => Text('• $f')),
            const SizedBox(height: 12),

            // Technologies
            Text(
              'Technologies:',
              // style: theme.textTheme.subtitle1?.copyWith(
              //   fontWeight: FontWeight.w600,
              // ),
            ),
            CustomChips(items: project.technologies),
            const SizedBox(height: 8),

            // Libraries with hyperlinks
            Text(
              'Libraries:',
              // style: theme.textTheme.subtitle1?.copyWith(
              //   fontWeight: FontWeight.w600,
              // ),
            ),
            CustomChips(
              items: project.libraries.keys.toList(),
              isClickable: true,
              links: project.libraries,
            ),
            const SizedBox(height: 12),
            Screenshots(project: project),
            SizedBox(height: 20),

            // Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (project.liveDemoUrl != null)
                  ElevatedButton(
                    onPressed: () => customeUrlLauncher(project.liveDemoUrl!),
                    child: const Text('Live Demo'),
                  ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  icon: const Icon(Icons.code),
                  label: const Text('GitHub'),
                  onPressed: () => customeUrlLauncher(project.githubUrl),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
