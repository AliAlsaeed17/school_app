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
        : AnimatedItemsList(
            widgets: alerts
                .map((alert) => AlertItem(
                      alert: alert,
                    ))
                .toList(),
          );
  }
}
