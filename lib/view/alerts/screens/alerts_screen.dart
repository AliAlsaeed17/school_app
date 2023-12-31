import 'package:school_app/core/constants/app_packages.dart';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({super.key});

  @override
  State<AlertsScreen> createState() => _AlertsScreenState();
}

class _AlertsScreenState extends State<AlertsScreen> {
  @override
  void initState() {
    BlocProvider.of<AlertsCubit>(context).getAlerts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'التنبيهات'),
      drawer: const AppDrawer(),
      body: Container(
        padding: AppSizes.padding10,
        height: ResponsiveHelper.screenHeight(context),
        child: BlocBuilder<AlertsCubit, AlertsState>(
          bloc: BlocProvider.of<AlertsCubit>(context),
          builder: (context, state) {
            if (state is AlertsLoading) {
              return const AlertsListShimmer();
            } else if (state is AlertsLoadingSuccess) {
              return RefreshIndicator(
                onRefresh: () async => context.read<AlertsCubit>().getAlerts(),
                child: AlertsList(alerts: state.alerts),
              );
            } else if (state is AlertsLoadingError) {
              return ErrorMessage(message: state.errormsg);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
