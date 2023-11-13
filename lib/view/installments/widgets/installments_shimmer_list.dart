import 'package:school_app/core/constants/app_packages.dart';

class InstallmentsShimmerList extends StatelessWidget {
  const InstallmentsShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const InstallmentShimmer();
      },
      separatorBuilder: (context, index) =>
          VerticalSizedBox(ResponsiveHelper.verticalSpacerHeight(context)),
      itemCount: 4,
    );
  }
}
