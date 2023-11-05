import 'package:school_app/core/constants/app_packages.dart';

class TeacherNoteItem extends StatelessWidget {
  const TeacherNoteItem({super.key, required this.teacherNote});

  final TeacherNote teacherNote;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: AlertState.getAlertColor(teacherNote.type),
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: AppSizes.radius10,
              ),
              child: Icon(
                AlertState.getAlertIcon(teacherNote.type),
                color: AppColors.white,
                size: 40,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${teacherNote.teacher} (${teacherNote.subject})",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    teacherNote.text,
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
