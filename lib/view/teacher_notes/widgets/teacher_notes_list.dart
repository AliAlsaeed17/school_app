import 'package:school_app/core/constants/app_packages.dart';

class TeacherNotesList extends StatelessWidget {
  const TeacherNotesList({super.key, required this.notes});

  final List<TeacherNote> notes;

  @override
  Widget build(BuildContext context) {
    return notes.isEmpty
        ? Center(
            child: Text(
              "لايوجد ملاحظات!",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.lightBlack),
            ),
          )
        : AnimatedItemsList(
            widgets: notes
                .map((note) => TeacherNoteItem(
                      note: note,
                    ))
                .toList(),
          );
  }
}
