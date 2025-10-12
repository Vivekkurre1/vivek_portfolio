import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivek_portfolio/core/utils/theme_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.height,
    required this.label,
    this.icon,
    this.backgroundColor,
    this.borderColor,
    this.onPressed,
    this.width,
  });

  final Function()? onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? height;
  final IconData? icon;
  final String label;
  final double? width;

  @override
  Widget build(BuildContext context) {
    var textTheme = context.watch<ThemeCubit>().state.themeData.textTheme;
    return SizedBox(
      height: height ?? 48,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: borderColor == null ? null : BorderSide(color: borderColor!),
          backgroundColor: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AutoSizeText(
                label,
                style: textTheme.titleSmall?.copyWith(color: Colors.white),
                textAlign: TextAlign.center,
                minFontSize: 8,
                maxLines: 1,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 5),
              Icon(
                icon,
                size: 18,
                color: context
                    .watch<ThemeCubit>()
                    .state
                    .themeData
                    .iconTheme
                    .color,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class CustomButton2 extends CustomButton {
  const CustomButton2(
    this.textColor, {
    super.key,
    super.height,
    required super.label,
    super.icon,
    super.backgroundColor,
    super.borderColor,
    super.onPressed,
    super.width,
  });
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    var textTheme = context.watch<ThemeCubit>().state.themeData.textTheme;
    return SizedBox(
      height: height ?? 48,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          side: borderColor == null ? null : BorderSide(color: borderColor!),
          backgroundColor: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: AutoSizeText(
                label,
                style: textTheme.titleSmall?.copyWith(color: textColor),
                textAlign: TextAlign.center,
                minFontSize: 8,
                maxLines: 1,
              ),
            ),
            if (icon != null) ...[
              const SizedBox(width: 5),
              Icon(icon, size: 18, color: textColor),
            ],
          ],
        ),
      ),
    );
  }
}
