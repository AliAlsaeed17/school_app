import 'package:school_app/core/constants/app_packages.dart';

class TeacherNoteShimmerList extends StatelessWidget {
  const TeacherNoteShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const TeacherNoteShimmer();
      },
      separatorBuilder: (context, index) =>
          VerticalSizedBox(ResponsiveHelper.verticalSpacerHeight(context)),
      itemCount: 4,
    );
  }
}
