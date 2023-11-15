import 'package:school_app/core/constants/app_packages.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.notification});

  final UserNotification notification;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: ResponsiveHelper.verticalSpacerHeight(context)),
      padding: AppSizes.padding10,
      decoration: BoxDecoration(
        color: AppColors.gray.withOpacity(.2),
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(builder: (context, contriants) {
              return AspectRatio(
                aspectRatio: 1,
                child: Container(
                  margin: AppSizes.padding10,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      opacity: 0.65,
                      image: AssetImage(AppImages.teacher),
                      fit: BoxFit.cover,
                    ),
                    color: AppColors.secondary,
                    borderRadius: AppSizes.radius10,
                  ),
                  child: Center(
                    child: Text(
                      "${notification.id}#",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 25,
                            color: AppColors.white.withOpacity(0.8),
                          ),
                    ),
                  ),
                ),
              );
            }),
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notification.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  notification.description,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: AppColors.gray),
                ),
                Text(
                  notification.time,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.gray),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
