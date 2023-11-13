import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/view/vacations/widgets/vacations_shimmer_list.dart';

class VacationsScreen extends StatefulWidget {
  const VacationsScreen({super.key});

  @override
  State<VacationsScreen> createState() => _VacationsScreenState();
}

class _VacationsScreenState extends State<VacationsScreen> {
  @override
  void initState() {
    BlocProvider.of<VacationsCubit>(context).getVacations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      drawer: const AppDrawer(),
      body: Container(
        padding: AppSizes.padding15,
        height: ResponsiveHelper.screenHeight(context),
        child: BlocBuilder<VacationsCubit, VacationsState>(
          bloc: BlocProvider.of<VacationsCubit>(context),
          builder: (context, state) {
            if (state is VacationsLoading) {
              return const VacationsShimmerList();
            } else if (state is VacationsLoadingSuccess) {
              return RefreshIndicator(
                onRefresh: () async {
                  context.read<VacationsCubit>().getVacations();
                },
                child: VacationsList(vacations: state.vacations),
              );
            } else if (state is VacationsLoadingError) {
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
