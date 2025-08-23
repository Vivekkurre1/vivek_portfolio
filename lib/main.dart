import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
import 'package:vivek_portfolio/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:vivek_portfolio/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeBloc()),
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: MaterialApp(
        title: "Vivek Kurre",
        debugShowCheckedModeBanner: false,
        home: BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
          child: const HomeView(),
        ),
        // home: HomeView(),
      ),
    );
  }
}
