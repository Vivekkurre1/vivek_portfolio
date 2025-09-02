import 'package:flutter/material.dart';
import 'package:vivek_portfolio/core/utils/app_enums.dart';
import 'package:vivek_portfolio/core/utils/app_extensions.dart';
import 'package:vivek_portfolio/presentation/widgets/body/education/edu.dart';
import 'package:vivek_portfolio/presentation/widgets/body/education/education_head.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EducationHead(),
          SizedBox(height: 20),
          EduDesk(),
          // if (context.width < DeviceType.mobile.getMaxWidth())
          //   EduMob()
          // else if (context.width < DeviceType.ipad.getMaxWidth())
          //   EduTab()
          // else
          //   EduDesk(),
        ],
      ),
    );
  }
}
