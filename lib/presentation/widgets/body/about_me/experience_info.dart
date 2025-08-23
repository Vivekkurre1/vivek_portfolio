import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';

import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ExperienceInfo extends StatelessWidget {
  const ExperienceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = context.watch<ThemeCubit>().state.themeData.textTheme;
    return Row(
      children: [
        Text(
          AppStrings.numOfExperience,
          style: context.width < DeviceType.mobile.getMaxWidth()
              ? AppStyles.s32.copyWith(fontSize: 48)
              : AppStyles.s32.copyWith(fontSize: 96),
        ),
        const SizedBox(width: 20),
        Flexible(
          child: Text(
            AppStrings.experienceMsg,
            style: _getExpMsgStyle(context.width, textTheme),
            softWrap: true,
          ),
        ),
      ],
    );
  }

  TextStyle? _getExpMsgStyle(double deviceWidth, TextTheme textTheme) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      // return AppStyles.s16.copyWith(fontWeight: FontWeight.w500);
      return textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w500);
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      // return AppStyles.s18;
      return textTheme.headlineMedium;
    } else {
      // return AppStyles.s24.copyWith(fontWeight: FontWeight.w500);
      return textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w500);
    }
  }
}
