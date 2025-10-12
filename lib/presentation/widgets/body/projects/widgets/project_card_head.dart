import 'package:flutter/material.dart';
import 'package:vivek_portfolio/data/models/project.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/helpers/helper.dart';

class CardHead extends StatelessWidget {
  const CardHead({super.key, required this.themeData, required this.project});

  final Project project;
  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
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
            style: themeData.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.code, color: themeData.colorScheme.primary),
          tooltip: 'View GitHub',
          onPressed: () => customeUrlLauncher(project.githubUrl),
        ),
      ],
    );
  }
}
