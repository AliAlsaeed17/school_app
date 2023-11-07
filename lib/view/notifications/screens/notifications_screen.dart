import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/view/notifications/widgets/notification_shimmer.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: mainAppBar(title: 'الاشعارات'),
        drawer: const AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: 3 == 4
                    ? ListView.separated(
                        itemBuilder: (context, i) {
                          return const NotificationShimmer();
                        },
                        separatorBuilder: (context, index) =>
                            const VerticalSizedBox(10),
                        itemCount: 10,
                      )
                    : RefreshIndicator(
                        onRefresh: () async {},
                        child: 3 == 4
                            ? Center(
                                child: Text(
                                  "لايوجد اشعارات!",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: AppColors.lightBlack),
                                ),
                              )
                            : ListView.separated(
                                itemBuilder: (context, index) {
                                  return NotificationItem();
                                },
                                separatorBuilder: (context, index) =>
                                    const VerticalSizedBox(10),
                                itemCount: 4,
                              ),
                      ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}
