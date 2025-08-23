import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/config/theme_manager.dart';
import 'package:vivek_portfolio/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:vivek_portfolio/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vivek Kurre",
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme(),
      darkTheme: CustomTheme.darkTheme(),
      home: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(),
        child: const HomeView(),
      ),
    );
  }
}
