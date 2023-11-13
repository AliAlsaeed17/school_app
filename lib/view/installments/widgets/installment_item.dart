import 'package:school_app/core/class/installment_helper.dart';
import 'package:school_app/core/constants/app_packages.dart';

class InstallmentItem extends StatelessWidget {
  const InstallmentItem({super.key, required this.installment});

  final Installment installment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppSizes.paddingH10V5,
      decoration: BoxDecoration(
        color: InstallmentHelper.getInstallmentItemColor(installment.type),
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: AppSizes.radius10,
              ),
              child: const Icon(
                FontAwesomeIcons.moneyBill,
                color: AppColors.white,
                size: 40,
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
                    installment.statement,
                    style: Theme.of(context).textTheme.titleLarge!,
                  ),
                  Text(installment.amount.toString(),
                      style: Theme.of(context).textTheme.bodyLarge!),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
