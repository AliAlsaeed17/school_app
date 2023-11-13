import 'package:school_app/core/constants/app_packages.dart';

class StudentTimeShimmerList extends StatelessWidget {
  const StudentTimeShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) {
        return const StudentTimeShimmer();
      },
      separatorBuilder: (context, index) =>
          VerticalSizedBox(ResponsiveHelper.verticalSpacerHeight(context)),
      itemCount: 4,
    );
  }
}
