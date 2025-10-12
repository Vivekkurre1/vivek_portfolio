import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';

class EducationHead extends StatelessWidget {
  const EducationHead({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = context.watch<ThemeCubit>().state.themeData.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        FittedBox(child: Text("Education 🎓", style: textTheme.displayMedium)),
      ],
    );
  }
}
