import 'package:school_app/core/constants/app_packages.dart';

class ComplaintsScreen extends StatefulWidget {
  const ComplaintsScreen({super.key});

  @override
  State<ComplaintsScreen> createState() => _ComplaintsScreenState();
}

class _ComplaintsScreenState extends State<ComplaintsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'الشكاوى'),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: 4 == 3
                  ? ListView.separated(
                      itemBuilder: (context, i) {
                        return const ComplaintShimmer();
                      },
                      separatorBuilder: (context, index) =>
                          const VerticalSizedBox(10),
                      itemCount: 10,
                    )
                  : RefreshIndicator(
                      onRefresh: () async {},
                      child: 5 == 4
                          ? Center(
                              child: Text(
                                "لايوجد شكاوى!",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.lightBlack),
                              ),
                            )
                          : ListView.separated(
                              itemBuilder: (context, index) {
                                return ComplaintItem(
                                  complaint: Complaint(
                                      id: 6,
                                      type: 'type',
                                      description: 'description',
                                      reply: 'reply',
                                      student: 5,
                                      user: 'user',
                                      createdAt: DateTime.now()),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const VerticalSizedBox(10),
                              itemCount: 7,
                            ),
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        backgroundColor: AppColors.white,
        child: const Icon(
          Icons.add,
          color: AppColors.complaint,
          size: 40,
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
