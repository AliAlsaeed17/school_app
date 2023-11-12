import 'package:school_app/core/constants/app_packages.dart';

class SubjectsScreen extends StatefulWidget {
  const SubjectsScreen({super.key});

  @override
  State<SubjectsScreen> createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {
  @override
  void initState() {
    BlocProvider.of<SubjectsCubit>(context).getSubjects();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(),
      drawer: const AppDrawer(),
      body: Container(
        padding: const EdgeInsets.all(15.0),
        height: MediaQuery.of(context).size.height,
        child: BlocBuilder<SubjectsCubit, SubjectsState>(
          bloc: BlocProvider.of<SubjectsCubit>(context),
          builder: (context, state) {
            if (state is SubjectsLoading) {
              return const LoadingItem(color: AppColors.secondary);
            } else if (state is SubjectsLoadingSuccess) {
              return RefreshIndicator(
                onRefresh: () async =>
                    context.read<SubjectsCubit>().getSubjects(),
                child: SubjectsGrid(subjects: state.subjects),
              );
            } else if (state is SubjectsLoadingError) {
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
