import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart' show ThemeCubit;

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_constants.dart';
import '../../../core/utils/app_enums.dart';
import '../../../core/utils/app_extensions.dart';
import 'custom_menu_btn.dart';
import 'developer_name_btn.dart';
import 'horizontal_headers.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(AppConstants.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Theme.of(context).brightness == Brightness.dark
      //     ? AppColors.appBarColor
      //     : AppColors.appBarColorLight,
      // color: Theme.of(context).appBarTheme.backgroundColor,
      color: context
          .watch<ThemeCubit>()
          .state
          .themeData
          .appBarTheme
          .backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: _getHorizontalPadding(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const DeveloperNameBtn(),
          if (context.width < DeviceType.ipad.getMaxWidth())
            IconButton(
              onPressed: () {
                context.read<ThemeCubit>().toggleTheme();
              },
              tooltip: 'Change Theme',
              color: AppColors.primaryColor,
              icon: Icon(context.watch<ThemeCubit>().state.icon),
            ),
          context.width > DeviceType.ipad.getMaxWidth()
              ? const HorizontalHeaders()
              : const CustomMenuBtn(),
          if (context.width > DeviceType.ipad.getMaxWidth())
            IconButton(
              onPressed: () {
                context.read<ThemeCubit>().toggleTheme();
              },
              tooltip: 'Change Theme',
              color: AppColors.primaryColor,
              icon: Icon(context.watch<ThemeCubit>().state.icon),
            ),
        ],
      ),
    );
  }

  double _getHorizontalPadding(BuildContext context) {
    if (context.width < DeviceType.ipad.getMaxWidth()) {
      return context.width * .03;
    } else {
      return context.width * .08;
    }
  }
}
