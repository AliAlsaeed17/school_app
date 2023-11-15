import 'package:school_app/core/constants/app_packages.dart';

class TeacherNoteShimmer extends StatelessWidget {
  const TeacherNoteShimmer({super.key});

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
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                margin: AppSizes.paddingH10V5,
                child: const BaseShimmerWidget.roundedRectangular(),
              ),
            ),
          ),
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
