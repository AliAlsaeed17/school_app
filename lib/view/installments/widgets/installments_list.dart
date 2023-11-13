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
        : ListView.separated(
            itemBuilder: (context, index) {
              return InstallmentItem(
                installment: installments[index],
              );
            },
            separatorBuilder: (context, index) => VerticalSizedBox(
                ResponsiveHelper.verticalSpacerHeight(context)),
            itemCount: installments.length,
          );
  }
}
