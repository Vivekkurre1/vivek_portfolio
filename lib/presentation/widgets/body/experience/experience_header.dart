import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/app_enums.dart';
import 'package:vivek_portfolio/core/utils/app_extensions.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';

class ExperienceHead extends StatelessWidget {
  const ExperienceHead({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeCubit>().state.themeData;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            "${AppBarHeaders.experience.getString()} 👨‍💻",
            style: theme.textTheme.displayMedium,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'WORK EXPERIENCE THAT I HAVE DONE !',
          style: theme.textTheme.bodyLarge?.copyWith(color: theme.hintColor),
        ),
      ],
    );
  }
}
