import 'package:school_app/core/constants/app_packages.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({super.key, required this.notifications});

  final List<UserNotification> notifications;

  @override
  Widget build(BuildContext context) {
    return notifications.isEmpty
        ? Center(
            child: Text(
              "لايوجد اشعارات!",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.lightBlack),
            ),
          )
        : AnimatedItemsList(
            widgets: notifications
                .map((notification) => NotificationItem(
                      notification: notification,
                    ))
                .toList(),
          );
  }
}
