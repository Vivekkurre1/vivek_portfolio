import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
import 'package:vivek_portfolio/data/models/experience.dart';

class ExperienceCardHeader extends StatelessWidget {
  const ExperienceCardHeader({super.key, required this.exp});

  final Experience exp;

  @override
  Widget build(BuildContext context) {
    final themeData = context.watch<ThemeCubit>().state.themeData;
    final isDark = themeData.brightness == Brightness.dark;
    final primary = themeData.colorScheme.primary;
    return Row(
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
                      color: isDark ? Colors.white : primary.withOpacity(0.21),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      exp.employmentType == EmploymentType.fullTime
                          ? 'FULL-TIME'
                          : exp.employmentType == EmploymentType.partTime
                          ? 'PART-TIME'
                          : 'REMOTE / CONTRACT',
                      style: TextStyle(
                        color: isDark ? Colors.blue[900] : Colors.blue[900],
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
    );
  }
}
