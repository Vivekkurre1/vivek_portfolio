// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ThemeCubit extends Cubit<ThemeData> {
//   ThemeCubit() : super(_lightTheme);

//   static final ThemeData _lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primarySwatch: Colors.blue,
//     scaffoldBackgroundColor: Colors.white,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: Colors.blue,
//       foregroundColor: Colors.white,
//     ),
//   );

//   static final ThemeData _darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primarySwatch: Colors.deepPurple,
//     scaffoldBackgroundColor: Colors.black,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: Colors.black87,
//       foregroundColor: Colors.white,
//     ),
//   );

//   void toggleTheme() {
//     emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
//   }

//   // call change theme
//   void changeTheme() {
//     toggleTheme();
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/app_colors.dart';

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
    scaffoldBackgroundColor: Color(0xff1A1A29),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff181824),
      foregroundColor: Colors.white,
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
  );

  void toggleTheme() {
    if (state.themeData.brightness == Brightness.dark) {
      emit(ThemeState(themeData: _lightTheme, icon: Icons.wb_sunny));
    } else {
      emit(ThemeState(themeData: _darkTheme, icon: Icons.nightlight_round));
    }
  }
}
