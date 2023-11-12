import 'package:school_app/core/constants/app_packages.dart';

class HomeworksScreen extends StatefulWidget {
  const HomeworksScreen({super.key});

  @override
  State<HomeworksScreen> createState() => _HomeworksScreenState();
}

class _HomeworksScreenState extends State<HomeworksScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeworksCubit>(context).getHomeworks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      drawer: const AppDrawer(),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: ResponsiveHelper.screenHeight(context),
        child: BlocBuilder<HomeworksCubit, HomeworksState>(
          bloc: BlocProvider.of<HomeworksCubit>(context),
          builder: (context, state) {
            if (state is HomeworksLoading) {
              return const HomeworksShimmerList();
            } else if (state is HomeworksLoadingSuccess) {
              return RefreshIndicator(
                onRefresh: () async =>
                    context.read<HomeworksCubit>().getHomeworks(),
                child: HomeworksList(homeworks: state.homeworks),
              );
            } else if (state is HomeworksLoadingError) {
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
