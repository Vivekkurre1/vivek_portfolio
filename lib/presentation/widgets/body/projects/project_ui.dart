import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vivek_portfolio/core/utils/app_constants.dart';
import 'package:vivek_portfolio/core/utils/app_enums.dart';
import 'package:vivek_portfolio/core/utils/app_extensions.dart';
import 'package:vivek_portfolio/data/models/project.dart';

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

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _getCrossAxisCount(context.width),
          // crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 24,
          childAspectRatio: 1 / 2.0,
        ),
        itemBuilder: (_, index) =>
            ProjectCard(project: AppConstants.projects[index]),
        itemCount: AppConstants.projects.length,
      ),
      // child: Wrap(
      //   spacing: 16,
      //   runSpacing: 24,
      //   children: AppConstants.projects
      //       .map(
      //         (project) => SizedBox(
      //           width: (width / _getCrossAxisCount(width)) - 20,
      //           child: ProjectCard(project: project),
      //         ),
      //       )
      //       .toList(),
      // ),
    );
  }

  int _getCrossAxisCount(double deviceWidth) {
    int numOfServices = AppConstants.projects.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else {
      return numOfServices > 3 ? 3 : numOfServices;
    }
  }
}

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  Widget _buildChips(
    List<String> items, {
    bool isClickable = false,
    Map<String, String>? links,
  }) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: items.map((item) {
        if (isClickable && links != null && links.containsKey(item)) {
          return InkWell(
            onTap: () => _launchUrl(links[item]!),
            child: Chip(
              label: Text(
                item,
                style: TextStyle(
                  color: Colors.blue.shade700,
                  decoration: TextDecoration.underline,
                ),
              ),
              backgroundColor: Colors.blue.shade50,
            ),
          );
        }
        return Chip(label: Text(item), backgroundColor: Colors.grey.shade200);
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo and Project Name Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      project.logoUrl,
                      width: 48,
                      height: 48,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      project.name,
                      // style: theme.textTheme.headline6?.copyWith(
                      //   fontWeight: FontWeight.bold,
                      // ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.code),
                    tooltip: 'View GitHub',
                    onPressed: () => _launchUrl(project.githubUrl),
                  ),
                ],
              ),
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
              _buildChips(project.technologies),
              const SizedBox(height: 8),

              // Libraries with hyperlinks
              Text(
                'Libraries:',
                // style: theme.textTheme.subtitle1?.copyWith(
                //   fontWeight: FontWeight.w600,
                // ),
              ),
              _buildChips(
                project.libraries.keys.toList(),
                isClickable: true,
                links: project.libraries,
              ),
              const SizedBox(height: 12),

              // Screenshots horizontal scroll
              Container(
                constraints: const BoxConstraints(maxHeight: 300),
                // height: 300,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: project.screenshots.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (_, idx) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        project.screenshots[idx],
                        // width: 160,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),

              // Buttons Row
              Row(
                children: [
                  if (project.liveDemoUrl != null)
                    ElevatedButton(
                      onPressed: () => _launchUrl(project.liveDemoUrl!),
                      child: const Text('Live Demo'),
                    ),
                  const SizedBox(width: 16),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.code),
                    label: const Text('GitHub'),
                    onPressed: () => _launchUrl(project.githubUrl),
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
