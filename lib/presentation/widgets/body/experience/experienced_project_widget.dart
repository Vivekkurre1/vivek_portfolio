import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
import 'package:vivek_portfolio/presentation/common_widgets/screenshots.dart';
import 'package:vivek_portfolio/data/models/experience.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/widgets/custom_chips.dart';

class ExperiencedProject extends StatelessWidget {
  const ExperiencedProject({super.key, required this.proj});
  final ProjectExperience proj;

  @override
  Widget build(BuildContext context) {
    final themeData = context.watch<ThemeCubit>().state.themeData;
    // final isDark = themeData.brightness == Brightness.dark;
    final primary = themeData.colorScheme.primary;
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                proj.name,
                style: themeData.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (proj.appOrWebLink != null)
                IconButton(
                  icon: Icon(Icons.open_in_browser, color: primary, size: 20),
                  onPressed: () => launchUrl(Uri.parse(proj.appOrWebLink!)),
                ),
            ],
          ),
          if (proj.summary.isNotEmpty) _summary(themeData),
          const SizedBox(height: 8),
          if (proj.features.isNotEmpty)
            CustomChips(
              title: "Features:",
              themeData: themeData,
              items: proj.features,
            ),
          const SizedBox(height: 8),
          if (proj.libraries != null)
            CustomChips(
              title: 'Libraries:',
              themeData: themeData,
              isClickable: true,
              items: proj.libraries!.keys.toList(),
              links: proj.libraries,
            ),
          const SizedBox(height: 8),
          if (proj.screenshots.isNotEmpty)
            Screenshots(
              themeData: themeData,
              screenshots: proj.screenshots,
              isWebProject: false,
            ),
        ],
      ),
    );
  }

  Text _summary(ThemeData themeData) {
    return Text(
      proj.summary,
      style: themeData.textTheme.bodySmall?.copyWith(height: 1.2),
    );
  }
}
