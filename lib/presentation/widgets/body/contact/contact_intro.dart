import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
import 'package:vivek_portfolio/presentation/widgets/body/contact/social_medial_icons.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ContactIntro extends StatelessWidget {
  const ContactIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(child: Text(AppStrings.contactWithMe, style: AppStyles.s32)),
        const SizedBox(height: 8),
        Text(
          AppStrings.contactMsg,
          style: context
              .watch<ThemeCubit>()
              .state
              .themeData
              .textTheme
              .headlineSmall,
          softWrap: true,
        ),
        const SizedBox(height: 8),
        const SocialMediaIcons(),
      ],
    );
  }
}
