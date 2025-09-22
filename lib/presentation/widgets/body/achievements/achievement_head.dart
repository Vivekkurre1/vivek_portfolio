import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/app_enums.dart';
import 'package:vivek_portfolio/core/utils/app_extensions.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';

class AchievementHead extends StatelessWidget {
  const AchievementHead({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeCubit>().state.themeData;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            "${AppBarHeaders.achievements.getString()} 🏆",
            style: theme.textTheme.displayMedium,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'ACHIEVEMENTS, CERTIFICATIONS AND SOME COOL STUFF THAT I HAVE DONE !',
          style: theme.textTheme.bodyLarge?.copyWith(color: theme.hintColor),
        ),
      ],
    );
  }
}
