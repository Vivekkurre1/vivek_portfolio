import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/app_styles.dart';

abstract class CustomTheme {
  static ThemeData lightTheme() => ThemeData(
    primaryColor: AppColors.primaryColorLight,
    highlightColor: AppColors.secondaryColorLight,
    scaffoldBackgroundColor: AppColors.scaffoldColorLight,
    fontFamily: 'Poppins',
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.primaryLightLight,
      filled: true,
      labelStyle: AppStyles.s14,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.lowPriorityLight),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColorLight),
      ),
    ),
  );
  static ThemeData darkTheme() => ThemeData(
    primaryColor: AppColors.primaryColor,
    highlightColor: AppColors.secondaryColor,
    scaffoldBackgroundColor: AppColors.scaffoldColor,
    fontFamily: 'Poppins',
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.primaryLight,
      filled: true,
      labelStyle: AppStyles.s14,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.lowPriority),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
    ),
  );
}
