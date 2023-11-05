import 'package:school_app/core/constants/app_packages.dart';
import 'package:school_app/logic/cubits/homeworks/homeworks_cubit.dart';

class HomeworksScreen extends StatefulWidget {
  const HomeworksScreen({super.key});

  @override
  State<HomeworksScreen> createState() => _HomeworksScreenState();
}

class _HomeworksScreenState extends State<HomeworksScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: mainAppBar(),
        drawer: const AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: BlocBuilder<HomeworksCubit, HomeworksState>(
              bloc: BlocProvider.of<HomeworksCubit>(context),
              builder: (context, state) {
                if (state is HomeworksInitial) {
                  context.read<HomeworksCubit>().getHomeworks();
                }
                if (state is HomeworksLoading) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return const HomeworkShimmer();
                      },
                      separatorBuilder: (context, index) =>
                          const VerticalSizedBox(10),
                      itemCount: 10,
                    ),
                  );
                }
                if (state is HomeworksLoadingSuccess) {
                  final homeworks = state.homeworks;
                  return homeworks.isEmpty
                      ? Text(
                          "لايوجد وظائف!",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontSize: 16,
                                    color: AppColors.lightBlack,
                                  ),
                          textAlign: TextAlign.center,
                        )
                      : SizedBox(
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return HomeworkItem(
                                homework: homeworks[index],
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const VerticalSizedBox(10),
                            itemCount: homeworks.length,
                          ),
                        );
                }
                if (state is HomeworksLoadingError) {
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
