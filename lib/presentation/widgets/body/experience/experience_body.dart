import 'package:flutter/material.dart';
import 'package:vivek_portfolio/core/utils/app_constants.dart';
import 'package:vivek_portfolio/presentation/widgets/body/experience/card/experience_card.dart';

class ExperienceUi extends StatelessWidget {
  const ExperienceUi({super.key});
  double _getCardWidth(double width) {
    if (width >= 1200) return width / 2.6;
    if (width >= 800) return width / 1.15;
    return width * 0.97;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      child: Center(
        child: Wrap(
          spacing: 24,
          runSpacing: 32,
          alignment: WrapAlignment.center,
          children: AppConstants.experiences.map((exp) {
            return SizedBox(
              width: _getCardWidth(width),
              child: ExperienceCard(exp: exp),
            );
          }).toList(),
        ),
      ),
    );
  }
}
