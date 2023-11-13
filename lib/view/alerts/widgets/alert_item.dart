import 'package:school_app/core/constants/app_packages.dart';

class AlertItem extends StatelessWidget {
  const AlertItem({super.key, required this.alert});

  final Alert alert;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.padding15,
      decoration: BoxDecoration(
        color: AlertHelper.getAlertColor(alert.type),
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: AppSizes.radius10,
              ),
              child: Icon(
                AlertHelper.getAlertIcon(alert.type),
                color: AppColors.white,
                size: 40,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  alert.title,
                  style: Theme.of(context).textTheme.titleLarge!,
                ),
                Text(
                  alert.description,
                  //overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
