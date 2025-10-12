import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/app_enums.dart';
import 'package:vivek_portfolio/core/utils/app_extensions.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
import 'package:vivek_portfolio/presentation/widgets/body/contact/social_medial_icons.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ContactIntro extends StatelessWidget {
  const ContactIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: context.watch<ThemeCubit>().state.themeData.cardColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(
            context.width > DeviceType.ipad.getMaxWidth() ? 0 : 16,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      width: _getFormWidth(context.width),
      // height: context.width * 0.35,
      height: _getFormHeight(context.width),

      // alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(AppStrings.contactWithMe, style: AppStyles.s32),
          ),
          const SizedBox(height: 8),
          Text(
            AppStrings.contactMsg,
            textAlign: TextAlign.center,
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
      ),
    );
  }

  double _getFormWidth(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.6;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 2;
    } else {
      return deviceWidth / 2.5;
    }
  }

  double _getFormHeight(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth * 1.2;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.4;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 1.8;
    } else if (deviceWidth < DeviceType.largeScreenDesktop.getMaxWidth()) {
      return deviceWidth / 2.4;
    } else {
      return deviceWidth / 2.5;
    }
  }
}
