import 'package:school_app/core/constants/app_packages.dart';

class AlertItem extends StatelessWidget {
  const AlertItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: AlertState.getAlertColor('alert.type'),
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: AppSizes.radius10,
              ),
              child: Icon(
                AlertState.getAlertIcon('alert.type'),
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
                    'alert.title',
                    style: Theme.of(context).textTheme.titleLarge!,
                  ),
                  Text(
                    'alert.description',
                    //overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyLarge!,
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
