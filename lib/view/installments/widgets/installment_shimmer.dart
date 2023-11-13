import 'package:school_app/core/constants/app_packages.dart';

class InstallmentShimmer extends StatelessWidget {
  const InstallmentShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.paddingH10V5,
      decoration: const BoxDecoration(
        color: AppColors.homework,
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: AppSizes.radius10,
              ),
              child: const Icon(
                FontAwesomeIcons.moneyBill,
                color: AppColors.white,
                size: 40,
              ),
            ),
          ),
          const Expanded(
            flex: 3,
            child: Padding(
              padding: AppSizes.padding10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BaseShimmerWidget.roundedRectangular(width: 150, height: 20),
                  VerticalSizedBox(5),
                  BaseShimmerWidget.roundedRectangular(width: 75, height: 15)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
