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
        padding: AppSizes.padding15,
        height: ResponsiveHelper.screenHeight(context),
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
