// import 'package:flutter/material.dart';
// import 'package:trustify/src/constants/colors.dart';
// import 'package:trustify/src/constants/sizes.dart';
// import 'package:trustify/src/features/authentication/models/dashboard/categories_models.dart';

// class DashboardRecommendedHouses extends StatelessWidget {
//   const DashboardRecommendedHouses({
//     super.key,
//     required this.txtTheme,
//   });
//   final TextTheme txtTheme;

//   @override
//   Widget build(BuildContext context) {
//     final list = DashboardCategoriesModel.list;
//     return SizedBox(
//       height: 200,
//       child: ListView.builder(
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         itemCount: list.length,
//         itemBuilder: (context, index) => GestureDetector(
//           onTap: list[index].onPress,
//           child: SizedBox(
//             width: 320,
//             height: 200,
//             child: Padding(
//               padding: const EdgeInsets.only(right: 10, top: 5),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   //For Dark Color
//                   // color: isDark ? tSecondaryColor : tCardBgColor,
//                 ),
//                 padding: const EdgeInsets.all(10),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Flexible(
//                           child: Text(
//                             list[index].title,
//                             style: txtTheme.headlineMedium,
//                             maxLines: 2,
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                         Flexible(
//                             child: Image(
//                                 image: AssetImage(list[index].image),
//                                 height: 110)),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                               shape: const CircleBorder()),
//                           onPressed: () {},
//                           child: const Icon(Icons.play_arrow),
//                         ),
//                         const SizedBox(width: tDashboardCardPadding),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               list[index].heading,
//                               style: txtTheme.headlineMedium,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                             Text(
//                               list[index].subHeading,
//                               style: txtTheme.bodyMedium,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ],
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
