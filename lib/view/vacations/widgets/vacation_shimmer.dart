// ignore_for_file: camel_case_types

import 'package:school_app/core/constants/app_packages.dart';

class VacationShimmer extends StatelessWidget {
  const VacationShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColors.vacation,
        border: Border.all(color: AppColors.lightBlack),
        borderRadius: AppSizes.radius25,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 64,
              child: const BaseShimmerWidget.roundedRectangular(
                width: 64,
                height: 64,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BaseShimmerWidget.roundedRectangular(
                      width: 100, height: 20),
                  VerticalSizedBox(
                      ResponsiveHelper.verticalSpacerHeight(context)),
                  const BaseShimmerWidget.roundedRectangular(
                      width: 50, height: 15)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
