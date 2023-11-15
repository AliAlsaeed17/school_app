import 'package:school_app/core/constants/app_packages.dart';

class TeacherNoteItem extends StatelessWidget {
  const TeacherNoteItem({super.key, required this.note});

  final TeacherNote note;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: ResponsiveHelper.verticalSpacerHeight(context)),
      padding: AppSizes.paddingH10V5,
      decoration: BoxDecoration(
        color: AlertHelper.getAlertColor(note.type),
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: AppSizes.radius10,
                ),
                child: Icon(
                  AlertHelper.getAlertIcon(note.type),
                  color: AppColors.white,
                  size: 40,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: AppSizes.padding10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${note.teacher} (${note.subject})",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    note.text,
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
