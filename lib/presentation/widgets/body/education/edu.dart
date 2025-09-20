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
      return theme.textTheme.headlineSmall?.copyWith(
        // fontWeight: FontWeight.w500,
      );
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return theme.textTheme.headlineMedium;
    } else {
      return theme.textTheme.headlineLarge?.copyWith();
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
              Container(
                // height: context.width * 0.12,
                width: context.width * 0.60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chhattisgarh Swami Vivekanand Technical University, Bhilai, Chhattisgarh",
                      style: _getTitleStyle(context.width, themeData),
                      softWrap: true,
                      // maxLines: null, // unlimited line
                      overflow: TextOverflow.visible,
                    ),

                    // Text(
                    //   "Chhattisgarh Swami Vivekanand Technical University, Bhilai",
                    //   style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    // ),
                    Text(
                      "B. Tech in Computer Science Engineering",
                      // style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                      style: _getExpMsgStyle(context.width, themeData),
                    ),
                    Text(
                      "2018 - 2022",
                      style: _getExpMsgContentStyle(context.width, themeData),
                    ),
                    Text(
                      "•  Participated in Rural Development and Social Events as Student Volunteer in NSS for 2 years",
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
              Container(
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
                //child: Image.asset('assets/images/gitam.png'),
              ),
              SizedBox(width: 20),
              Container(
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

// class EduTab extends StatelessWidget {
//   const EduTab({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         width: 600,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Education',
//               style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50),
//             ),
//             SizedBox(height: 10),
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
//                   SizedBox(width: 15),
//                   Center(
//                     child: Container(
//                       margin: EdgeInsets.all(10.0),
//                       padding: EdgeInsets.all(10.0),
//                       height: 150,
//                       width: 150,
//                       alignment: Alignment.centerLeft,
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 10.0,
//                             spreadRadius: 5.0,
//                             offset: Offset(
//                               0.0, // Move to right 10  horizontally
//                               10.0, // Move to bottom 10 Vertically
//                             ),
//                           ),
//                         ],
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: NetworkImage(NetworkAssets.devImg),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Center(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "GITAM University, Hyderabad",
//                     style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     "Bachelor's in Computer Science Engineering",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                   ),
//                   Text("2017 - 2021", style: TextStyle(fontSize: 22)),
//                   Text(
//                     "•  Participated in Rural Development and Social Events as Student Volunteer in NSS for 2 years",
//                     style: TextStyle(fontSize: 22, color: Colors.grey),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             //Narayana
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
//                   SizedBox(width: 15),
//                   Center(
//                     child: Container(
//                       margin: EdgeInsets.all(10.0),
//                       padding: EdgeInsets.all(10.0),
//                       height: 150,
//                       width: 150,
//                       alignment: Alignment.centerLeft,
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 10.0,
//                             spreadRadius: 5.0,
//                             offset: Offset(
//                               0.0, // Move to right 10  horizontally
//                               10.0, // Move to bottom 10 Vertically
//                             ),
//                           ),
//                         ],
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: NetworkImage(NetworkAssets.devImg),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Center(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Narayana Junior College, Hyderabad",
//                     style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     "Intermediate in MPC stream",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                   ),
//                   Text("2015 - 2017", style: TextStyle(fontSize: 22)),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             //SCHOOL
//             SingleChildScrollView(
//               scrollDirection: Axis.vertical,
//               child: Column(
//                 children: [
//                   SizedBox(width: 15),
//                   Center(
//                     child: Container(
//                       margin: EdgeInsets.all(10.0),
//                       padding: EdgeInsets.all(10.0),
//                       height: 150,
//                       width: 150,
//                       alignment: Alignment.centerLeft,
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 10.0,
//                             spreadRadius: 5.0,
//                             offset: Offset(
//                               0.0, // Move to right 10  horizontally
//                               10.0, // Move to bottom 10 Vertically
//                             ),
//                           ),
//                         ],
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: NetworkImage(NetworkAssets.devImg),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Center(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "St. John's High School, Karimnagar",
//                     style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     "Board of Secondary Education Telangana",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//                   ),
//                   Text("2015", style: TextStyle(fontSize: 22)),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class EduMob extends StatelessWidget {
//   const EduMob({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 600,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Education',
//             style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
//           ),
//           SizedBox(height: 10),
//           SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Center(
//               child: Column(
//                 children: [
//                   Center(
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       padding: EdgeInsets.all(5.0),
//                       height: 100,
//                       width: 100,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 10.0,
//                             spreadRadius: 5.0,
//                             offset: Offset(
//                               0.0, // Move to right 10  horizontally
//                               10.0, // Move to bottom 10 Vertically
//                             ),
//                           ),
//                         ],
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: NetworkImage(NetworkAssets.devImg),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "GITAM University, Hyderabad",
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   "Bachelor's in Computer Science Engineering",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                 ),
//                 Text("2017 - 2021", style: TextStyle(fontSize: 17)),
//                 Text(
//                   "•  Participated in Rural Development and Social Events as Student Volunteer in NSS for 2 years",
//                   style: TextStyle(fontSize: 17, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//           SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Center(
//               child: Column(
//                 children: [
//                   Center(
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       padding: EdgeInsets.all(5.0),
//                       height: 100,
//                       width: 100,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 10.0,
//                             spreadRadius: 5.0,
//                             offset: Offset(
//                               0.0, // Move to right 10  horizontally
//                               10.0, // Move to bottom 10 Vertically
//                             ),
//                           ),
//                         ],
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: NetworkImage(NetworkAssets.devImg),
//                         ),
//                       ),

//                       //child: Image.asset('assets/images/gitam.png'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Narayana Junior College, Hyderabad",
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   "Board of Intermediate Education Telangana",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                 ),
//                 Text("2015 - 2017", style: TextStyle(fontSize: 17)),
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//           SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Center(
//               child: Column(
//                 children: [
//                   Center(
//                     child: Container(
//                       margin: EdgeInsets.all(10),
//                       padding: EdgeInsets.all(5.0),
//                       height: 100,
//                       width: 100,
//                       alignment: Alignment.center,
//                       decoration: BoxDecoration(
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 10.0,
//                             spreadRadius: 5.0,
//                             offset: Offset(
//                               0.0, // Move to right 10  horizontally
//                               10.0, // Move to bottom 10 Vertically
//                             ),
//                           ),
//                         ],
//                         shape: BoxShape.circle,
//                         image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: NetworkImage(NetworkAssets.devImg),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "St. John's High School, Karimnagar",
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   "Board of Secondary Education Telangana",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                 ),
//                 Text("2015", style: TextStyle(fontSize: 17)),
//               ],
//             ),
//           ),
//           SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }
