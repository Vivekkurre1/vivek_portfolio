import 'package:flutter/material.dart';
import 'package:vivek_portfolio/core/utils/app_constants.dart';
import 'package:vivek_portfolio/core/utils/app_enums.dart';
import 'dart:js' as js;

import 'package:vivek_portfolio/core/utils/app_extensions.dart';
import 'package:vivek_portfolio/data/models/achivement.dart';

class AchieveDesk extends StatelessWidget {
  const AchieveDesk({super.key});

  int _getCrossAxisCount(double deviceWidth) {
    int numOfServices = AppConstants.achievements.length;
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return 1;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return 3;
    } else {
      return numOfServices > 3 ? 3 : numOfServices;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _getCrossAxisCount(context.width),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),

      itemBuilder: (context, index) {
        return AchievementCard(achievement: AppConstants.achievements[index]);
      },
      itemCount: AppConstants.achievements.length,
    );
    //   return SizedBox(
    //     width: context.width,
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.horizontal,
    //       child: SizedBox(
    //         height: 350,
    //         width: 1000,
    //         child: Row(),
    //       ),
    //     ),
    //   );
  }
}

class AchievementCard extends StatelessWidget {
  const AchievementCard({super.key, required this.achievement});

  final Achievement achievement;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 300,
      // width: context.width * 0.3,
      // height: context.height * 0.3,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
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
        children: [
          Image.network(
            achievement.imageUrl,
            width: context.width * 0.3,
            height: context.height * 0.15,
            // width: 150,
            // height: 150,
          ),
          FittedBox(
            child: Text(
              achievement.name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            onTap: () {
              js.context.callMethod("open", [achievement.certificationUrl]);
            },
            child: Text(
              'View Certificate',
              style: TextStyle(fontSize: 18, color: Colors.green[900]),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

// class AchievementCard extends StatelessWidget {
//   const AchievementCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         SizedBox(width: 25),
//         Container(
//           width: 450,
//           height: 300,
//           padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             color: Colors.white.withOpacity(0.5),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 blurRadius: 10.0,
//                 spreadRadius: 5,
//                 offset: Offset(
//                   5.0, // Move to right 10  horizontally
//                   5.0, // Move to bottom 10 Vertically
//                 ),
//               ),
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.network(
//                 'https://res.cloudinary.com/dnjeaojih/image/upload/v1758519289/udemy-wordmark-seeklogo_qte3kg.png',
//                 width: 250,
//                 height: 175,
//               ),
//               Text(
//                 'Master Flutter and Firebase',
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
//                 textAlign: TextAlign.center,
//               ),
//               InkWell(
//                 onTap: () {
//                   js.context.callMethod("open", [
//                     "https://www.udemy.com/certificate/UC-a3a43b16-baf7-4816-8302-0440d4616042/",
//                   ]);
//                 },
//                 child: Text(
//                   'View Certificate',
//                   style: TextStyle(fontSize: 18, color: Colors.green[900]),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(width: 25),
//         Container(
//           width: 450,
//           height: 300,
//           padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(5),
//             color: Colors.white.withOpacity(0.5),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 blurRadius: 10.0,
//                 spreadRadius: 5,
//                 offset: Offset(
//                   5.0, // Move to right 10  horizontally
//                   5.0, // Move to bottom 10 Vertically
//                 ),
//               ),
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.network(
//                 'https://res.cloudinary.com/dnjeaojih/image/upload/v1758521916/jspiders_logo_b5dvba.png',
//                 width: 250,
//                 height: 175,
//               ),
//               SizedBox(height: 5),
//               Text(
//                 'Java Full Stack',
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
//                 textAlign: TextAlign.center,
//               ),
//               InkWell(
//                 onTap: () {
//                   js.context.callMethod("open", [
//                     "https://drive.google.com/file/d/1KpauM1CHXCzzbTofxaCr4E30lmpTuIm7/view?usp=sharing",
//                   ]);
//                 },
//                 child: Text(
//                   'View Certificate',
//                   style: TextStyle(fontSize: 18, color: Colors.green[900]),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
