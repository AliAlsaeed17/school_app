import 'package:school_app/core/constants/app_packages.dart';

class VacationsShimmerList extends StatelessWidget {
  const VacationsShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const VacationShimmer();
      },
      separatorBuilder: (context, index) =>
          VerticalSizedBox(ResponsiveHelper.verticalSpacerHeight(context)),
      itemCount: 4,
    );
  }
}
