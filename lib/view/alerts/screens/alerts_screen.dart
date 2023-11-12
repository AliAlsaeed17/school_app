import 'package:school_app/core/constants/app_packages.dart';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({super.key});

  @override
  State<AlertsScreen> createState() => _AlertsScreenState();
}

class _AlertsScreenState extends State<AlertsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'التنبيهات'),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: 2 == 1
                  ? ListView.separated(
                      itemBuilder: (context, i) {
                        return const AlertShimmer();
                      },
                      separatorBuilder: (context, index) =>
                          const VerticalSizedBox(10),
                      itemCount: 10,
                    )
                  : RefreshIndicator(
                      onRefresh: () async {},
                      child: 3 == 5
                          ? Center(
                              child: Text(
                                "لايوجد تنبيهات!",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.lightBlack),
                              ),
                            )
                          : ListView.separated(
                              itemBuilder: (context, index) {
                                return const AlertItem();
                              },
                              separatorBuilder: (context, index) =>
                                  const VerticalSizedBox(10),
                              itemCount: 3,
                            ),
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
