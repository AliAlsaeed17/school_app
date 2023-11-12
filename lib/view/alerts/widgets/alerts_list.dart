import 'package:school_app/core/constants/app_packages.dart';

class AlertsList extends StatelessWidget {
  const AlertsList({super.key, required this.alerts});

  final List<Alert> alerts;

  @override
  Widget build(BuildContext context) {
    return alerts.isEmpty
        ? Center(
            child: Text(
              "لايوجد تنبيهات!",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.lightBlack),
            ),
          )
        : ListView.separated(
            itemBuilder: (context, index) {
              return AlertItem(
                alert: alerts[index],
              );
            },
            separatorBuilder: (context, index) => VerticalSizedBox(
                ResponsiveHelper.verticalSpacerHeight(context)),
            itemCount: alerts.length,
          );
  }
}
