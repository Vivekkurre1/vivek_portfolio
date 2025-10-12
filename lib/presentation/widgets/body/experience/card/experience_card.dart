import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
import 'package:vivek_portfolio/data/models/experience.dart';
import 'package:vivek_portfolio/presentation/widgets/body/experience/card/experience_card_header.dart';
import 'package:vivek_portfolio/presentation/widgets/body/experience/experienced_project_widget.dart';
import 'package:vivek_portfolio/presentation/widgets/body/projects/widgets/custom_chips.dart';

class ExperienceCard extends StatelessWidget {
  final Experience exp;
  const ExperienceCard({super.key, required this.exp});

  String formatDuration(DateTime start, DateTime end) {
    int years = end.year - start.year;
    int months = end.month - start.month + years * 12;
    years = months ~/ 12;
    months %= 12;
    return '${years > 0 ? "$years yr${years > 1 ? "s" : ""}" : ""}${(years > 0 && months > 0) ? ", " : ""}${months > 0 ? "$months mo" : ""}';
  }

  @override
  Widget build(BuildContext context) {
    final themeData = context.watch<ThemeCubit>().state.themeData;
    final isDark = themeData.brightness == Brightness.dark;
    final primary = themeData.colorScheme.primary;

    return Card(
      color: themeData.cardColor,
      elevation: isDark ? 2 : 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            ExperienceCardHeader(exp: exp),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Duration: ",
                  style: themeData.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  formatDuration(exp.startDate, exp.endDate),
                  style: themeData.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            CustomChips(
              title: "Tech Stack",
              themeData: themeData,
              items: exp.techStack,
            ),
            // Social links
            Row(
              children: exp.socialLinks.entries
                  .map(
                    (e) => IconButton(
                      tooltip: "Open ${e.key}",
                      onPressed: () => launchUrl(Uri.parse(e.value)),
                      icon: e.key.toLowerCase().contains('linkedin')
                          ? const Icon(Icons.alternate_email)
                          : e.key.toLowerCase().contains('github')
                          ? const Icon(Icons.code)
                          : e.key.toLowerCase().contains('twitter')
                          ? const Icon(Icons.share)
                          : const Icon(Icons.link),
                      color: isDark ? Colors.tealAccent : primary,
                    ),
                  )
                  .toList(),
            ),
            Divider(),
            ...exp.projects.map((proj) => ExperiencedProject(proj: proj)),
          ],
        ),
      ),
    );
  }
}
