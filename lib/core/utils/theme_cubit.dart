import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<bool> {
  ThemeCubit() : super(false);

  void toggleTheme() {
  if (state == true) {
    setLightTheme();
  } else {
    setDarkTheme();
  }
}

  void setLightTheme() => emit(false);
  void setDarkTheme() => emit(true);
}
