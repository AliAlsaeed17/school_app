import 'package:school_app/core/constants/app_packages.dart';

class AlertShimmer extends StatelessWidget {
  const AlertShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.padding15,
      decoration: const BoxDecoration(
        color: AppColors.homework,
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          const Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: BaseShimmerWidget.roundedRectangular(),
            ),
          ),
          const HorizontalSizedBox(10),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, contraints) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BaseShimmerWidget.roundedRectangular(
                        width: contraints.maxWidth * .6, height: 20),
                    const VerticalSizedBox(8),
                    BaseShimmerWidget.roundedRectangular(
                        width: contraints.maxWidth * .3, height: 20)
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
