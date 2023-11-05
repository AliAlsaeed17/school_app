import 'package:school_app/core/constants/app_packages.dart';

class ResultItem extends StatelessWidget {
  const ResultItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: Stack(
        children: [
          Positioned.fill(
            top: 14,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.primary),
                borderRadius: AppSizes.radius25,
              ),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return subjects(context, 5);
                },
                separatorBuilder: (context, index) =>
                    const VerticalSizedBox(10),
                itemCount: 7,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 150,
              height: 27,
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.primary),
                borderRadius: AppSizes.radius25,
              ),
              child: Center(
                child: Text(
                  'exam.name',
                  style: UITextStyle.bodyNormal.copyWith(
                    color: AppColors.primary,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget subjects(BuildContext context, index) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.resultColor,
              borderRadius: AppSizes.radiusBottomTopRight15,
            ),
            child: Text(
              'exam.exams[index].subject',
              style: UITextStyle.titleBold.copyWith(
                color: AppColors.primary,
                fontSize: 20,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: AppSizes.radiusBottomTopRight15,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              text: const TextSpan(
                style: UITextStyle.titleBold,
                children: [
                  TextSpan(
                    text: '84',
                  ),
                  TextSpan(
                    text: "/",
                    style: UITextStyle.titleBold,
                  ),
                  TextSpan(
                    text: '100',
                    style: UITextStyle.titleBold,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Stack(
//       children: [
//         Container(
//           width: 318,
//           height: 42,
//           decoration: BoxDecoration(
//             color: AppColors.resultColor,
//             borderRadius: BorderRadius.circular(16),
//           ),
//         ),
//         Positioned(
//             right: 0,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'exam.exams[index].subject',
//                 style: UITextStyle.titleBold.copyWith(
//                   color: AppColors.primary,
//                   fontSize: 20,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             )),
//         Positioned(
//           left: 0,
//           child: Container(
//             width: 134,
//             height: 42,
//             decoration: const BoxDecoration(
//               color: AppColors.primary,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(16),
//                 bottomLeft: Radius.circular(16),
//                 bottomRight: Radius.circular(16),
//               ),
//             ),
//             child: Row(
//               children: [
//                 const HorizontalSizedBox(40),
//                 Text(
//                   'exam.exams[index].max_score',
//                   style: UITextStyle.titleBold.copyWith(
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 const Text(
//                   "/",
//                   style: UITextStyle.titleBold,
//                 ),
//                 Text(
//                   'exam.exams[index].studentScore',
//                   style: UITextStyle.titleBold.copyWith(
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );