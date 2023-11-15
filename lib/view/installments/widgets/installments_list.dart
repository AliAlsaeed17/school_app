import 'package:school_app/core/constants/app_packages.dart';

class InstallmentsList extends StatelessWidget {
  const InstallmentsList({super.key, required this.installments});

  final List<Installment> installments;

  @override
  Widget build(BuildContext context) {
    return installments.isEmpty
        ? Center(
            child: Text(
              "لايوجد أقساط!",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: AppColors.lightBlack),
            ),
          )
        : AnimatedItemsList(
            widgets: installments
                .map((installment) => InstallmentItem(
                      installment: installment,
                    ))
                .toList(),
          );
  }
}
