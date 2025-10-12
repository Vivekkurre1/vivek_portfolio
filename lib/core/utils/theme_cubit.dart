import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/app_colors.dart';
import 'package:vivek_portfolio/core/utils/app_styles.dart';

class ThemeState {
  final ThemeData themeData;
  final IconData icon;

  ThemeState({required this.themeData, required this.icon});
}

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
    : super(ThemeState(themeData: _lightTheme, icon: Icons.wb_sunny));

  static final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff181824),
      foregroundColor: Colors.white,
    ),
    cardColor: Colors.white,
    primaryColor: AppColors.primaryColorLight,
    secondaryHeaderColor: AppColors.primaryColor,
    highlightColor: AppColors.secondaryColorLight,
    scaffoldBackgroundColor: AppColors.scaffoldColorLight,
    hintColor: Colors.black87,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 52,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryColor,
      ),
      displayMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryColor,
      ),
      displaySmall: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryColor,
      ),

      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      ),

      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.black,
      ),

      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),

      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: AppColors.black,
      ),
    ),
    iconTheme: IconThemeData(color: Colors.black),

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

  static final MaterialColor _deepPurpleSwatch =
      MaterialColor(0xff7A288A, <int, Color>{
        50: Color(0xff7A288A),
        100: Color(0xff7A288A),
        200: Color(0xff7A288A),
        300: Color(0xff7A288A),
        400: Color(0xff7A288A),
        500: Color(0xff7A288A),
        600: Color(0xff7A288A),
        700: Color(0xff7A288A),
        800: Color(0xff7A288A),
        900: Color(0xff7A288A),
      });

  static final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: _deepPurpleSwatch,
    scaffoldBackgroundColor: Color(0xff1A1A29),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black87,
      foregroundColor: Colors.white,
    ),
    cardColor: Colors.black,
    primaryColor: AppColors.primaryColor,
    secondaryHeaderColor: AppColors.white,
    hintColor: Colors.white70,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontSize: 52,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),
      displayMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryColor,
      ),
      displaySmall: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryColor,
      ),

      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),

      titleLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
      ),

      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.white,
      ),

      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.white,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.white,
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.normal,
        color: AppColors.white,
      ),
    ),
    iconTheme: IconThemeData(color: Colors.white),
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

  void toggleTheme() {
    if (state.themeData.brightness == Brightness.dark) {
      emit(ThemeState(themeData: _lightTheme, icon: Icons.wb_sunny));
    } else {
      emit(ThemeState(themeData: _darkTheme, icon: Icons.nightlight_round));
    }
  }
}
