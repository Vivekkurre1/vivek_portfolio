import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
import 'package:vivek_portfolio/core/widgets/screenshots.dart';
import 'package:vivek_portfolio/data/models/experience.dart';
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    exp.companyLogoUrl,
                    width: 44,
                    height: 44,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exp.companyName,
                        style: themeData.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 7,
                              vertical: 2,
                            ),
                            margin: const EdgeInsets.only(right: 6),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? primary.withOpacity(0.21)
                                  : primary.withOpacity(0.21),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              exp.employmentType == EmploymentType.fullTime
                                  ? 'FULL-TIME'
                                  : exp.employmentType ==
                                        EmploymentType.partTime
                                  ? 'PART-TIME'
                                  : 'REMOTE / CONTRACT',
                              style: TextStyle(
                                color: isDark
                                    ? Colors.blue[900]
                                    : Colors.blue[900],
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Text(
                            exp.designation,
                            style: themeData.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      tooltip: "Visit company website",
                      icon: Icon(Icons.public, color: primary, size: 22),
                      onPressed: () => launchUrl(Uri.parse(exp.companyWebsite)),
                    ),
                  ],
                ),
              ],
            ),
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
            Text(
              "Tech Stack:",
              style: themeData.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            CustomChips(items: exp.techStack),
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
            ...exp.projects.map(
              (proj) => Padding(
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
                            icon: Icon(
                              Icons.open_in_browser,
                              color: primary,
                              size: 20,
                            ),
                            onPressed: () =>
                                launchUrl(Uri.parse(proj.appOrWebLink!)),
                          ),
                      ],
                    ),
                    if (proj.summary.isNotEmpty)
                      Text(
                        proj.summary,
                        style: themeData.textTheme.bodySmall?.copyWith(
                          height: 1.2,
                        ),
                      ),
                    const SizedBox(height: 8),
                    if (proj.features.isNotEmpty)
                      Text('Features:', style: themeData.textTheme.titleSmall),
                    const SizedBox(height: 4),
                    if (proj.features.isNotEmpty)
                      CustomChips(items: proj.features),
                    const SizedBox(height: 8),
                    if (proj.screenshots.isNotEmpty)
                      Screenshots(
                        screenshots: proj.screenshots,
                        isWebProject: false,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
