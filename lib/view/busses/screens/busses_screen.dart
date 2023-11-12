import 'package:school_app/core/constants/app_packages.dart';

class BussesScreen extends StatefulWidget {
  const BussesScreen({super.key});

  @override
  State<BussesScreen> createState() => _BussesScreenState();
}

class _BussesScreenState extends State<BussesScreen> {
  @override
  void initState() {
    BlocProvider.of<BussesCubit>(context).getBusses();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(title: 'الباصات'),
      drawer: const AppDrawer(),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        height: ResponsiveHelper.screenHeight(context),
        child: BlocBuilder<BussesCubit, BussesState>(
          bloc: BlocProvider.of<BussesCubit>(context),
          builder: (context, state) {
            if (state is BussesLoading) {
              return const LoadingItem(color: AppColors.secondary);
            } else if (state is BussesLoadingSuccess) {
              return RefreshIndicator(
                onRefresh: () async => context.read<BussesCubit>().getBusses(),
                child: BussesList(busses: state.busses),
              );
            } else if (state is BussesLoadingError) {
              return Center(
                child: Text(
                  'Error: ${state.errormsg}',
                  textAlign: TextAlign.center,
                ),
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
