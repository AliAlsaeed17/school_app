import 'package:school_app/core/constants/app_packages.dart';

class InstallmentsScreen extends StatefulWidget {
  const InstallmentsScreen({super.key});

  @override
  State<InstallmentsScreen> createState() => _InstallmentsScreenState();
}

class _InstallmentsScreenState extends State<InstallmentsScreen> {
  @override
  void initState() {
    BlocProvider.of<InstallmentsCubit>(context).getInstallments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'الحساب المالي'),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: AppSizes.padding15,
              child: BlocBuilder<InstallmentsCubit, InstallmentsState>(
                bloc: BlocProvider.of<InstallmentsCubit>(context),
                builder: (context, state) {
                  if (state is InstallmentsLoading) {
                    return const InstallmentsShimmerList();
                  } else if (state is InstallmentsLoadingSuccess) {
                    return RefreshIndicator(
                      onRefresh: () async =>
                          context.read<InstallmentsCubit>().getInstallments(),
                      child: InstallmentsList(installments: state.installments),
                    );
                  } else if (state is InstallmentsLoadingError) {
                    return ErrorMessage(message: state.errormsg);
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: AppSizes.paddingH25,
              color: AppColors.remainingAmount,
              child: Row(
                children: [
                  Text(
                    "المبلغ الباقي:",
                    style: Theme.of(context).textTheme.titleMedium!,
                  ),
                  const HorizontalSizedBox(10),
                  BlocBuilder<InstallmentsCubit, InstallmentsState>(
                    bloc: BlocProvider.of<InstallmentsCubit>(context),
                    builder: (context, state) {
                      if (state is InstallmentsLoading) {
                        return const BaseShimmerWidget.roundedRectangular(
                            width: 60, height: 20);
                      } else if (state is InstallmentsLoadingSuccess) {
                        return Expanded(
                          child: Text(
                            state.remainingAmount.toString(),
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleMedium!,
                          ),
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ],
              ),
            ),
          ),
          VerticalSizedBox(ResponsiveHelper.verticalSpacerHeight(context)),
        ],
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
