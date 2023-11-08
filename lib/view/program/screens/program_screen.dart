import 'package:school_app/core/constants/app_packages.dart';

class ProgramScreen extends StatefulWidget {
  const ProgramScreen({super.key});

  @override
  State<ProgramScreen> createState() => _ProgramScreenState();
}

class _ProgramScreenState extends State<ProgramScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: mainAppBar(title: 'برنامج الدوام'),
        drawer: const AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: 3 == 4
                    ? ListView.separated(
                        itemBuilder: (context, i) {
                          return const DayItemShimmer();
                        },
                        separatorBuilder: (context, index) =>
                            const VerticalSizedBox(10),
                        itemCount: 5,
                      )
                    : ListView.separated(
                        itemBuilder: (context, i) {
                          return DayItem(
                            dayProgram: DayProgram(
                              id: 4,
                              day: 'الأربعاء',
                              classes: [
                                Class(
                                  order: 'order',
                                  subject: 'subject',
                                ),
                                Class(
                                  order: 'order2',
                                  subject: 'subject2',
                                ),
                              ],
                              createdAt: DateTime.now(),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const VerticalSizedBox(10),
                        itemCount: 5,
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
