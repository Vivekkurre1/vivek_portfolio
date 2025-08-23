import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';

import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_strings.dart';

class AboutMeIntro extends StatelessWidget {
  const AboutMeIntro({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = context.watch<ThemeCubit>().state.themeData.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Text(
            AppBarHeaders.aboutMe.getString(),
            style: textTheme.displayMedium,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.aboutMeMsg,
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? textTheme.titleSmall
              : textTheme.titleLarge,
          softWrap: true,
        ),
      ],
    );
  }
}
