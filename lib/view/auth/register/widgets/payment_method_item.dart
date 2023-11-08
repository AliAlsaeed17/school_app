import 'package:school_app/core/constants/app_packages.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.icon,
    required this.method,
    this.isSelected = false,
    required this.onTap,
  });

  final IconData icon;
  final String method;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: AppSizes.radius10,
          border: Border.all(
            color: AppColors.primary,
            width: 2,
          ),
          color: isSelected ? AppColors.gray : AppColors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.primary : AppColors.gray,
            ),
            Text(
              method,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    fontSizeDelta: 2,
                    color: isSelected ? AppColors.primary : AppColors.gray,
                    fontWeightDelta: isSelected ? 2 : 1,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
