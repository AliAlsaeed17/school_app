import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/data/model/installment.dart';

class InstallmentItem extends StatelessWidget {
  const InstallmentItem({super.key, required this.installment});

  final Installment installment;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: installment.type == "تسديد"
            ? AppColors.paymentOn
            : AppColors.paymentOff,
        borderRadius: AppSizes.radius15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
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
              padding: const EdgeInsets.symmetric(vertical: 10),
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
