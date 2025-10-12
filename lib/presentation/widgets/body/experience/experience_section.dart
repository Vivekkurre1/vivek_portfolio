import 'package:flutter/material.dart';
import 'package:vivek_portfolio/presentation/widgets/body/experience/experience_body.dart';
import 'package:vivek_portfolio/presentation/widgets/body/experience/experience_header.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,

        children: [ExperienceHead(), SizedBox(height: 20), ExperienceUi()],
      ),
    );
  }
}
