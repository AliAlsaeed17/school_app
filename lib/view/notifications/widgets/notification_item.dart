import 'package:school_app/core/constants/app_packages.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.gray.withOpacity(.2),
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 70,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  opacity: 0.65,
                  image: AssetImage("assets/images/teacher-ph.jpg"),
                  fit: BoxFit.cover,
                ),
                color: AppColors.secondary,
                borderRadius: AppSizes.radius10,
              ),
              child: Center(
                child: Text(
                  "${45}#",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 25,
                        color: AppColors.white.withOpacity(0.8),
                      ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'userNotification.title',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'userNotification.description',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: AppColors.gray),
                ),
                Text(
                  'userNotification.time',
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
