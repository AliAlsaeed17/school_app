import 'package:school_app/core/constants/app_packages.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    BlocProvider.of<NotificationsCubit>(context).getNotifications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'الاشعارات'),
      drawer: const AppDrawer(),
      body: Container(
        padding: AppSizes.padding10,
        height: ResponsiveHelper.screenHeight(context),
        child: BlocBuilder<NotificationsCubit, NotificationsState>(
          bloc: BlocProvider.of<NotificationsCubit>(context),
          builder: (context, state) {
            if (state is NotificationsLoading) {
              return const NotificationsShimmerList();
            } else if (state is NotificationsLoadingSuccess) {
              return RefreshIndicator(
                onRefresh: () async {},
                child: NotificationsList(notifications: state.notifications),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
