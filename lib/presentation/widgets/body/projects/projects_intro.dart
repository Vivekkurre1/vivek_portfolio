import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/app_enums.dart';
import 'package:vivek_portfolio/core/utils/app_extensions.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';

import '../../../../core/utils/app_strings.dart';

class ProjectsIntro extends StatelessWidget {
  const ProjectsIntro({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeCubit>().state.themeData;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppBarHeaders.projects.getString(),
            style: theme.textTheme.displayMedium,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.projectsMsg,
          style: theme.textTheme.bodyLarge?.copyWith(color: theme.hintColor),
          softWrap: true,
        ),
      ],
    );
  }
}
