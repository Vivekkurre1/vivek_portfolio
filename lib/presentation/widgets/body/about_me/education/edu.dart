import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/app_assets.dart';
import 'package:vivek_portfolio/core/utils/app_enums.dart';
import 'package:vivek_portfolio/core/utils/app_extensions.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';

class EduDesk extends StatelessWidget {
  const EduDesk({super.key});

  TextStyle? _getTitleStyle(double deviceWidth, ThemeData theme) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return theme.textTheme.titleSmall;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return theme.textTheme.titleMedium;
    } else {
      return theme.textTheme.titleLarge;
    }
  }

  TextStyle? _getExpMsgStyle(double deviceWidth, ThemeData theme) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500);
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500);
    } else {
      return theme.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500);
    }
  }

  TextStyle? _getExpMsgContentStyle(double deviceWidth, ThemeData theme) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w500,
        color: theme.hintColor,
      );
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return theme.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w500,
        color: theme.hintColor,
      );
    } else {
      return theme.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w500,
        color: theme.hintColor,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var themeData = context.watch<ThemeCubit>().state.themeData;
    return SizedBox(
      width: context.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 15),
              Container(
                height: context.width * 0.12,
                width: context.width * 0.12,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 15.0,
                      spreadRadius: 5.0,
                      offset: Offset(
                        0.0, // Move to right 10  horizontally
                        10.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(NetworkAssets.csvtuLogo),
                  ),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: context.width * 0.60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chhattisgarh Swami Vivekanand Technical University, Bhilai, Chhattisgarh",
                      style: _getTitleStyle(context.width, themeData),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),

                    Text(
                      "B. Tech in Computer Science Engineering",
                      style: _getExpMsgStyle(context.width, themeData),
                    ),
                    Text(
                      "2018 - 2022",
                      style: _getExpMsgContentStyle(context.width, themeData),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 15),
              Container(
                height: context.width * 0.12,
                width: context.width * 0.12,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 15.0,
                      spreadRadius: 5.0,
                      offset: Offset(
                        0.0, // Move to right 10  horizontally
                        10.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(NetworkAssets.highAndHighSecondaryLogo),
                  ),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: context.width * 0.60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gayand Ram Verma Higher Secondary School Nardaha, Raipur",
                      style: _getTitleStyle(context.width, themeData),
                    ),
                    Text(
                      "Board of Intermediate Education Chhattisgarh",
                      style: _getExpMsgStyle(context.width, themeData),
                    ),
                    Text(
                      "2018",
                      style: _getExpMsgContentStyle(context.width, themeData),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 15),
              Container(
                height: context.width * 0.12,
                width: context.width * 0.12,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 15.0,
                      spreadRadius: 5.0,
                      offset: Offset(
                        0.0, // Move to right 10  horizontally
                        10.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(NetworkAssets.highAndHighSecondaryLogo),
                  ),
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: context.width * 0.60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Govt. High Secondary School Semariya, Raipur",
                      style: _getTitleStyle(context.width, themeData),
                    ),
                    Text(
                      "Board of Secondary Education Chhattisgarh",
                      style: _getExpMsgStyle(context.width, themeData),
                    ),
                    Text(
                      "2016",
                      style: _getExpMsgContentStyle(context.width, themeData),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
