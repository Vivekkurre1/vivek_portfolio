import 'package:flutter/material.dart';
import 'package:vivek_portfolio/presentation/widgets/body/achievements/achievement_head.dart';
import 'package:vivek_portfolio/presentation/widgets/body/achievements/achievements.dart';

class AchievementSection extends StatelessWidget {
  const AchievementSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,

        children: [AchievementHead(), SizedBox(height: 20), AchieveDesk()],
      ),
    );
  }
}
