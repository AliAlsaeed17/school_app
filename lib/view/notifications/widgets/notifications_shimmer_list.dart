import 'package:school_app/core/constants/app_packages.dart';

class NotificationsShimmerList extends StatelessWidget {
  const NotificationsShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) {
        return const NotificationShimmer();
      },
      separatorBuilder: (context, index) =>
          VerticalSizedBox(ResponsiveHelper.verticalSpacerHeight(context)),
      itemCount: 4,
    );
  }
}
