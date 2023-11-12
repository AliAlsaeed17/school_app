import 'package:school_app/core/constants/app_packages.dart';

class AlertsListShimmer extends StatelessWidget {
  const AlertsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) {
        return const AlertShimmer();
      },
      separatorBuilder: (context, index) =>
          VerticalSizedBox(ResponsiveHelper.verticalSpacerHeight(context)),
      itemCount: 4,
    );
  }
}
