// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/app_constants.dart';
import 'package:vivek_portfolio/core/utils/app_enums.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:vivek_portfolio/core/utils/app_extensions.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';
import 'package:vivek_portfolio/data/models/achivement.dart';

class AchieveDesk extends StatelessWidget {
  const AchieveDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Wrap(
        runAlignment: WrapAlignment.center,
        alignment: WrapAlignment.center,
        spacing: 24,
        runSpacing: 24,
        children: [
          for (var item in AppConstants.achievements)
            AchievementCard(achievement: item),
        ],
      ),
    );
  }
}

class AchievementCard extends StatelessWidget {
  const AchievementCard({super.key, required this.achievement});

  final Achievement achievement;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeCubit>().state.themeData;
    var deviceWidth = context.width;
    var deviceHeight = context.height;
    double getHight() {
      if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
        return deviceHeight / 4;
      } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
        return deviceHeight / 4;
      } else {
        return deviceHeight / 2.4;
      }
    }

    double getWidth() {
      if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
        return deviceWidth / 1.25;
      } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
        return deviceWidth / 2;
      } else {
        return deviceWidth / 2.5;
      }
    }

    TextStyle? getTitleStyle() {
      if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
        return theme.textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: Colors.black,
        );
      } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
        return theme.textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: Colors.black,
        );
      } else {
        return theme.textTheme.headlineLarge?.copyWith(
          fontWeight: FontWeight.w700,
          color: Colors.black,
        );
      }
    }

    TextStyle? getButtonStyle() {
      if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
        return theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.green[900],
          decoration: TextDecoration.underline,
          decorationColor: Colors.green[900],
        );
      } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
        return theme.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.green[900],
          decoration: TextDecoration.underline,
          decorationColor: Colors.green[900],
        );
      } else {
        return theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.w500,
          color: Colors.green[900],
          decoration: TextDecoration.underline,
          decorationColor: Colors.green[900],
        );
      }
    }

    return Container(
      width: getWidth(),
      height: getHight(),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: theme.hintColor.withOpacity(0.1),
            blurRadius: 10.0,
            spreadRadius: 5,
            offset: Offset(
              5.0, // Move to right 10  horizontally
              5.0, // Move to bottom 10 Vertically
            ),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            constraints: BoxConstraints(
              maxWidth: 300,
              maxHeight: 200,
              minHeight: 100,
              minWidth: 200,
            ),
            child: Image.network(achievement.imageUrl, fit: BoxFit.contain),
          ),
          Text(
            achievement.name,
            style: getTitleStyle(),
            textAlign: TextAlign.center,
          ),
          InkWell(
            onTap: () {
              js.context.callMethod("open", [achievement.certificationUrl]);
            },
            child: Text(
              'View Certificate',
              style: getButtonStyle(),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
