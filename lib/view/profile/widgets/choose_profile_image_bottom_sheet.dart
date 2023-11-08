import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/view/shared/app_icon_option.dart';

class ChooseProfileImageBottomSheet extends StatelessWidget {
  const ChooseProfileImageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: AppSizes.radiusTop45,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "تعيين صورة الملف الشخصي",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const VerticalSizedBox(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: AppIconOption(
                  onPressed: () {},
                  icon: Icons.camera_alt_outlined,
                  optionTitle: 'Camera',
                ),
              ),
              Expanded(
                child: AppIconOption(
                  onPressed: () {},
                  icon: Icons.image,
                  optionTitle: 'Gallery',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
