import 'package:school_app/core/constants/app_packages.dart';

class VacationsScreen extends StatefulWidget {
  const VacationsScreen({super.key});

  @override
  State<VacationsScreen> createState() => _VacationsScreenState();
}

class _VacationsScreenState extends State<VacationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: BlocBuilder<VacationsCubit, VacationsState>(
            bloc: BlocProvider.of<VacationsCubit>(context),
            builder: (context, state) {
              print(state);
              if (state is VacationsInitial) {
                context.read<VacationsCubit>().getVacations();
              } else if (state is VacationsLoading) {
                return ListView.separated(
                  itemBuilder: (context, index) {
                    return const VacationShimmer();
                  },
                  separatorBuilder: (context, index) =>
                      const VerticalSizedBox(10),
                  itemCount: 10,
                );
              } else if (state is VacationsLoadingSuccess) {
                final vacations = state.vacations;
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<VacationsCubit>().getVacations();
                  },
                  child: vacations.isEmpty
                      ? Center(
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              Text(
                                "لايوجد عطل!",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      fontSize: 16,
                                      color: AppColors.lightBlack,
                                    ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )
                      : ListView.separated(
                          itemBuilder: (context, index) {
                            return VacationItem(
                              vacation: vacations[index],
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const VerticalSizedBox(10),
                          itemCount: vacations.length,
                        ),
                );
              } else if (state is VacationsLoadingError) {
                final errorMessage = state.errormsg;
                return Text('Error: $errorMessage');
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
    );
  }
}
