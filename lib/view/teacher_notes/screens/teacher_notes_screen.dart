import 'package:school_app/core/constants/app_packages.dart';

class TeacherNotesScreen extends StatefulWidget {
  const TeacherNotesScreen({super.key});

  @override
  State<TeacherNotesScreen> createState() => _TeacherNotesScreenState();
}

class _TeacherNotesScreenState extends State<TeacherNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'ملاحظات المعلم'),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: 5 == 3
                  ? ListView.separated(
                      itemBuilder: (context, i) {
                        return const TeacherNoteShimmer();
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
                                "لايوجد ملاحظات!",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(color: AppColors.lightBlack),
                              ),
                            )
                          : ListView.separated(
                              itemBuilder: (context, i) {
                                return TeacherNoteItem(
                                  teacherNote: TeacherNote(
                                    id: 5,
                                    teacher: 'teacher',
                                    subject: 'subject',
                                    text: 'text',
                                    isHidden: 1,
                                    type: 'type',
                                    createdAt: DateTime.now(),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  const VerticalSizedBox(10),
                              itemCount: 10,
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
