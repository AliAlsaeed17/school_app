import 'package:school_app/core/constants/app_packages.dart';

class SubjectsScreen extends StatefulWidget {
  const SubjectsScreen({super.key});

  @override
  State<SubjectsScreen> createState() => _SubjectsScreenState();
}

class _SubjectsScreenState extends State<SubjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: mainAppBar(),
        drawer: const AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: BlocBuilder<SubjectsCubit, SubjectsState>(
              bloc: BlocProvider.of<SubjectsCubit>(context),
              builder: (context, state) {
                print(state);
                if (state is SubjectsInitial) {
                  context.read<SubjectsCubit>().getSubjects();
                }
                if (state is SubjectsLoading) {
                  return const LoadingItem(color: AppColors.secondary);
                }
                if (state is SubjectsLoadingSuccess) {
                  final subjects = state.subjects;
                  return GridView.builder(
                    itemCount: subjects.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 180,
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return SubjectItem(
                        subject: subjects[index],
                      );
                    },
                  );
                }
                if (state is SubjectsLoadingError) {
                  final errorMessage = state.errormsg;
                  return Text('Error: $errorMessage');
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
        bottomNavigationBar: const AppBottomNavigationBar(),
      ),
    );
  }
}

// 

