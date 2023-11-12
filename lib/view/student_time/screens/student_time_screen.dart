import 'package:school_app/core/constants/app_packages.dart';

class StudentTimeScreen extends StatefulWidget {
  const StudentTimeScreen({super.key});

  @override
  State<StudentTimeScreen> createState() => _StudentTimeScreenState();
}

class _StudentTimeScreenState extends State<StudentTimeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'دوام الطالب'),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: 3 == 4
                  ? ListView.separated(
                      itemBuilder: (context, i) {
                        return const StudentTimeShimmer();
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
                                "لايوجد غيابات!",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.lightBlack),
                              ),
                            )
                          : ListView.separated(
                              itemBuilder: (context, i) {
                                return const StudentTimeItem();
                              },
                              separatorBuilder: (context, index) =>
                                  const VerticalSizedBox(10),
                              itemCount: 5,
                            ),
                    ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
