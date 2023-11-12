import 'package:school_app/core/constants/app_packages.dart';

class SubjectsGrid extends StatelessWidget {
  const SubjectsGrid({super.key, required this.subjects});

  final List<Subject> subjects;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => subjects.isEmpty
          ? Text(
              "لايوجد مواد!",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 16,
                    color: AppColors.lightBlack,
                  ),
              textAlign: TextAlign.center,
            )
          : GridView.builder(
              itemCount: subjects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: constraints.maxWidth > 700
                    ? 4
                    : constraints.maxWidth > 500
                        ? 3
                        : constraints.maxWidth > 300
                            ? 2
                            : 1,
                crossAxisSpacing:
                    ResponsiveHelper.horizontalSpacerHeight(context),
                mainAxisSpacing: ResponsiveHelper.verticalSpacerHeight(context),
              ),
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return SubjectItem(
                  subject: subjects[index],
                );
              },
            ),
    );
  }
}
