import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
import '../widgets/body/home_body.dart';
import '../widgets/app_bar/home_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context
          .watch<ThemeCubit>()
          .state
          .themeData
          .scaffoldBackgroundColor,
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }
}
