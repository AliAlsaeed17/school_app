import 'package:school_app/core/constants/app_packages.dart';

void appSnackBar({
  required String title,
  required String message,
}) =>
    Get.showSnackbar(
      GetSnackBar(
        backgroundColor: AppColors.primary,
        duration: const Duration(seconds: 3),
        borderRadius: 20,
        titleText: Text(
          title,
          style: Get.context!.textTheme.titleLarge!.copyWith(
            color: AppColors.white,
          ),
        ),
        messageText: Text(
          message,
          style: Get.context!.textTheme.bodyMedium!.copyWith(
            color: AppColors.white,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
